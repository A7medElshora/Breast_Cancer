import 'package:flutter/material.dart';

class DiagnosisScreen extends StatelessWidget {
  static const String routeName = 'Diagnosis';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Color(0xffF8CAE4),
        title: Text(
          "Diagnosis",
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                "A Triple Assessment",
                style: TextStyle(
                    fontSize: 23,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(top: 5, left: 13, right: 10),
              child: Text(
                "Clinical Examination, Ultrasonography plus \nMammography and Ultrasound guided core \nneedle biopsy of the lump can give definitive \ndiagnosis of breast cancer in most instances.",
                style: TextStyle(fontSize: 18),
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(left: 35, right: 25),
              child: Image.asset(
                "assets/images/manual.jpg",
                width: 300,
                height: 350,
              ),
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Text(
                "Manual Examination",
                style: TextStyle(
                  fontSize: 23,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(left: 35, right: 25),
              child: Image.asset(
                "assets/images/mammographr.jpg",
                width: 300,
                height: 350,
              ),
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 10, left: 10),
              child: Text(
                "Mammography",
                style: TextStyle(
                  fontSize: 23,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(left: 35, right: 25),
              child: Image.asset(
                "assets/images/ultras.jpg",
                width: 300,
                height: 350,
              ),
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 10, left: 10),
              child: Text(
                "Ultrasonograpy",
                style: TextStyle(
                  fontSize: 23,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(left: 35, right: 25),
              child: Image.asset(
                "assets/images/biopsy.jpg",
                width: 300,
                height: 350,
              ),
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 30, left: 10),
              child: Text(
                "Biopsy",
                style: TextStyle(
                  fontSize: 23,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 5, left: 13, right: 10, bottom: 30),
              child: Text(
                "Apart from being aware of changes in the \nbreast, it is advisable to have a Mammogram \nonce every year,especially from the age of 40.\nBreast screening by way of Mammography isan effective proven way of detectingbreast cancer many years before itshows up.",
                style: TextStyle(fontSize: 18),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
