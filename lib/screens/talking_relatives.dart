import 'package:flutter/material.dart';

class TalkingRelatives extends StatelessWidget {
  static const String routeName = 'relatives screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Color(0xffF8CAE4),
        title: Text(
          "Talking to your Relatives",
          style: TextStyle(
              fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8, bottom: 10, right: 90),
              child: Text(
                "Talking to your Family and\nFriends about Breast Cancer",
                style: TextStyle(fontSize: 22, color: Color(0xff1d303d)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15, right: 15, bottom: 20, top: 20),
              child: Image.asset(
                "assets/images/relatives.jpg",
                fit: BoxFit.cover,
                width: double.infinity,
                height: 200,
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 10),
                  child: Icon(
                    Icons.check_box_outlined,
                    color: Color(0xffe13495),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5, top: 10),
                  child: Text(
                    "Take some time to figure out who all to",
                    style: TextStyle(fontSize: 20, color: Color(0xff1d303d)),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40, top: 0),
              child: Text(
                "tell, how much to tell, how to tell (in person, over phone, group chat).",
                style: TextStyle(fontSize: 20, color: Color(0xff1d303d)),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 10),
                  child: Icon(
                    Icons.check_box_outlined,
                    color: Color(0xffe13495),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5, top: 10),
                  child: Text(
                    "Most relatives would be willing to help",
                    style: TextStyle(fontSize: 20, color: Color(0xff1d303d)),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40, top: 0),
              child: Text(
                "in any way possible. Let them know that you will reach out whenever you need them.",
                style: TextStyle(fontSize: 20, color: Color(0xff1d303d)),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 10),
                  child: Icon(
                    Icons.check_box_outlined,
                    color: Color(0xffe13495),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5, top: 10),
                  child: Text(
                    "Some person can take charge to in form",
                    style: TextStyle(fontSize: 20, color: Color(0xff1d303d)),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40, top: 0),
              child: Text(
                "others about all updates regarding your health.",
                style: TextStyle(fontSize: 20, color: Color(0xff1d303d)),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 10),
                  child: Icon(
                    Icons.check_box_outlined,
                    color: Color(0xffe13495),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5, top: 10),
                  child: Text(
                    "Be honest about your feelings with them ",
                    style: TextStyle(fontSize: 20, color: Color(0xff1d303d)),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 260),
              child: Text(
                "as well.",
                style: TextStyle(fontSize: 20, color: Color(0xff1d303d)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}