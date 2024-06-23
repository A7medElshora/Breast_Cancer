import 'package:flutter/material.dart';

class SelfExamination extends StatelessWidget {
  static const String routeName = 'self examination';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffF8CAE4),
        centerTitle: true,
        title: Column(
          children: [
            Text(
              "Self Examination",
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  top: 10, bottom: 20, right: 10, left: 10),
              child: Text(
                "Once a month, please follow the below mentioned steps to check for any lumps, discomfort, or any other irregularities.",
                style: TextStyle(fontSize: 22, color: Color(0xff1d303d)),
              ),
            ),
            Row(
              children: [
                Image.asset(
                  "assets/images/photo_examine.jpg",
                  width: 200,
                  height: 150,
                ),
                Image.asset(
                  "assets/images/photo_finger.jpg",
                  width: 200,
                  height: 150,
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30, top: 5),
                  child: Text(
                    " Examine Breast\nand armpit with\nraised arm",
                    style: TextStyle(fontSize: 20, color: Color(0xff1d303d)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 60, top: 5),
                  child: Text(
                    "Use Fingerpads \nwith massage oil \nor shower gel",
                    style: TextStyle(fontSize: 20, color: Color(0xff1d303d)),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                children: [
                  Image.asset(
                    "assets/images/photo_upDown.jpg",
                    width: 200,
                    height: 150,
                  ),
                  Image.asset(
                    "assets/images/photo_start.jpg",
                    width: 200,
                    height: 150,
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 35, top: 0),
                  child: Text(
                    "Up and Down",
                    style: TextStyle(fontSize: 20, color: Color(0xff1d303d)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 80, top: 5),
                  child: Text(
                    "Start from the\nnipple and move\noutwards",
                    style: TextStyle(fontSize: 20, color: Color(0xff1d303d)),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                children: [
                  Image.asset(
                    "assets/images/photo_circle.jpg",
                    width: 200,
                    height: 150,
                  ),
                  Image.asset(
                    "assets/images/photo_mirror.jpg",
                    width: 200,
                    height: 150,
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 65, top: 0),
                  child: Text(
                    "Circles",
                    style: TextStyle(fontSize: 20, color: Color(0xff1d303d)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 100, top: 5),
                  child: Text(
                    "Examine breasts in\n the mirror for\n lumps or skin\n dimpling",
                    style: TextStyle(fontSize: 20, color: Color(0xff1d303d)),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                children: [
                  Image.asset(
                    "assets/images/photo_skincolor.jpg",
                    width: 200,
                    height: 150,
                  ),
                  Image.asset(
                    "assets/images/photo_fluid.jpg",
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
                    padding: const EdgeInsets.only(left: 40, top: 0),
                    child: Text(
                      "Change in skin\ncolor or texture..",
                      style: TextStyle(fontSize: 20, color: Color(0xff1d303d)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50, top: 5),
                    child: Text(
                      "    Nipple\nDeformation,\nColour change or\nLeaks of any fluid",
                      style: TextStyle(fontSize: 20, color: Color(0xff1d303d)),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}