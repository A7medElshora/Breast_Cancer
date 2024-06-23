import 'package:flutter/material.dart';

class SignsTab extends StatelessWidget {
  static const String routeName = 'Signs';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: Color(0xffF8CAE4),
          title: Text(
            "Warning Signs",
            style: TextStyle(
                fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    top: 10, bottom: 10, right: 10, left: 0),
                child: Text(
                  "What changes should \n    you be aware of?",
                  style: TextStyle(fontSize: 22, color: Color(0xff1d303d)),
                ),
              ),
              Row(
                children: [
                  Image.asset(
                    "assets/images/photo_nipple.jpg",
                    width: 200,
                    height: 150,
                  ),
                  Image.asset(
                    "assets/images/photo_lump.jpg",
                    width: 200,
                    height: 150,
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 55, top: 10),
                    child: Text(
                      "  Nipple \nDischarge",
                      style: TextStyle(fontSize: 22, color: Color(0xff1d303d)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 90, top: 10),
                    child: Text(
                      " Lumping or \n Thickening",
                      style: TextStyle(fontSize: 22, color: Color(0xff1d303d)),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  children: [
                    Image.asset(
                      "assets/images/photo_visible.jpg",
                      width: 200,
                      height: 150,
                    ),
                    Image.asset(
                      "assets/images/photo_dimp.jpg",
                      width: 200,
                      height: 150,
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 55, top: 10),
                    child: Text(
                      "  Nipple \nDischarge",
                      style: TextStyle(fontSize: 22, color: Color(0xff1d303d)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 90, top: 10),
                    child: Text(
                      " Lumping or \n Thickening",
                      style: TextStyle(fontSize: 22, color: Color(0xff1d303d)),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  children: [
                    Image.asset(
                      "assets/images/photo_skin.jpg",
                      width: 200,
                      height: 150,
                    ),
                    Image.asset(
                      "assets/images/photo_arm.jpg",
                      width: 200,
                      height: 150,
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 55, top: 10),
                    child: Text(
                      "  Nipple \nDischarge",
                      style: TextStyle(fontSize: 22, color: Color(0xff1d303d)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 90, top: 10),
                    child: Text(
                      " Lumping or \n Thickening",
                      style: TextStyle(fontSize: 22, color: Color(0xff1d303d)),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  children: [
                    Image.asset(
                      "assets/images/photo_pull.jpg",
                      width: 200,
                      height: 150,
                    ),
                    Image.asset(
                      "assets/images/photo_irr.jpg",
                      width: 200,
                      height: 150,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 55, top: 10),
                      child: Text(
                        "  Nipple \nDischarge",
                        style:
                            TextStyle(fontSize: 22, color: Color(0xff1d303d)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 90, top: 10),
                      child: Text(
                        " Lumping or \n Thickening",
                        style:
                            TextStyle(fontSize: 22, color: Color(0xff1d303d)),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}