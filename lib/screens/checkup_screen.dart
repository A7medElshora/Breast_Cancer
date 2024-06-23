import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:image_picker/image_picker.dart';

class CheckUpScreen extends StatefulWidget {
  static const String routeName = 'checkup_screen';

  const CheckUpScreen({super.key});

  @override
  State<CheckUpScreen> createState() => _CheckUpScreenState();
}

class _CheckUpScreenState extends State<CheckUpScreen> {
  XFile? _image;
  String? _result;
  bool _isAnalyzing = false;
  final ImagePicker _picker = ImagePicker();

  Future<void> _pickImage(ImageSource source) async {
    final XFile? selectedImage = await _picker.pickImage(source: source);
    if (selectedImage != null) {
      setState(() {
        _image = selectedImage;
        _result = null;
      });
    }
  }

  Future<void> _analyzeImage() async {
    if (_image == null) return;
    setState(() {
      _isAnalyzing = true;
    });

    try {
      final uri = Uri.parse('http://10.0.2.2:8000/predict');
      var request = http.MultipartRequest('POST', uri)
        ..headers.addAll({
          'Content-Type': 'multipart/form-data',
        })
        ..files.add(await http.MultipartFile.fromPath(
          'file', // Change this to match the key expected by the server
          _image!.path,
        ));

      var response = await request.send();

      if (response.statusCode == 200) {
        var responseData = await response.stream.bytesToString();
        var jsonResponse = json.decode(responseData);
        setState(() {
          _result = jsonResponse['prediction'];
          debugPrint('Response: $jsonResponse');
        });
      } else {
        setState(() {
          _result = 'Error analyzing image';
        });
        debugPrint('Response status code: ${response.statusCode}');
      }
    } catch (e) {
      setState(() {
        _result = 'Error analyzing image';
      });
      debugPrint('Exception: $e');
    } finally {
      setState(() {
        _isAnalyzing = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffF8CAE4),
        title: const Text('Check Up'),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding:
                const EdgeInsets.only(top: 40, left: 28, right: 28, bottom: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 40, top: 30, bottom: 20),
                  child: Row(
                    children: [
                      if (_image != null) Image.file(File(_image!.path)),
                      if (_result != null)
                        const Text(
                          "Prediction is : ",
                          style: TextStyle(
                            fontSize: 22,
                            color: Colors.black,
                          ),
                        ),
                      Text(
                        _result!,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          // backgroundColor: _result == 'malignant'
                          //     ? Colors.red
                          //     : Colors.green,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: MaterialButton(
                    elevation: 5.0,
                    color: const Color(0xffF8CAE4),
                    padding: const EdgeInsets.symmetric(
                        vertical: 17, horizontal: 40),
                    shape: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),
                    onPressed: () => _pickImage(ImageSource.gallery),
                    child: const Row(
                      children: [
                        Icon(Icons.image, color: Colors.white),
                        SizedBox(width: 20),
                        Text(
                          'Upload from gallery',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  children: <Widget>[
                    Expanded(
                        child: Divider(
                      color: Colors.black,
                      thickness: 2,
                    )),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                        'OR',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Expanded(
                        child: Divider(
                      color: Colors.black,
                      thickness: 2,
                    )),
                  ],
                ),
                SizedBox(height: 10),
                MaterialButton(
                  elevation: 5.0,
                  color: const Color(0xffF8CAE4),
                  padding:
                      const EdgeInsets.symmetric(vertical: 17, horizontal: 40),
                  shape: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                  onPressed: () => _pickImage(ImageSource.camera),
                  child: const Row(
                    children: [
                      Icon(Icons.camera_alt_outlined, color: Colors.white),
                      SizedBox(width: 20),
                      Text(
                        'Upload from Camera',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  children: <Widget>[
                    Expanded(
                        child: Divider(
                      color: Colors.black,
                      thickness: 2,
                    )),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                        'AND',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Expanded(
                        child: Divider(
                      color: Colors.black,
                      thickness: 2,
                    )),
                  ],
                ),
                if (_image != null && !_isAnalyzing)
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: MaterialButton(
                      elevation: 5.0,
                      color: const Color(0xffF8CAE4),
                      padding: const EdgeInsets.symmetric(
                          vertical: 15, horizontal: 70),
                      shape: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                      onPressed: () => _analyzeImage(),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Icon(
                            Icons.check,
                            color: Colors.white,
                            size: 30,
                          ),
                          const SizedBox(width: 40),
                          const Text(
                            'Show your Result',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                if (_isAnalyzing)
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: CircularProgressIndicator(),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
