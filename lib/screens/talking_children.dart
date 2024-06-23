import 'package:flutter/material.dart';

class TalkingChildren extends StatelessWidget {
  static const String routeName = 'children screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Color(0xffF8CAE4),
        title: Text(
          "Talking to your Children",
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
                "assets/images/children.jpg",
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
                    "Explaining to kids about a condition like",
                    style: TextStyle(fontSize: 20, color: Color(0xff1d303d)),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40, top: 0),
              child: Text(
                "Breast cancer is difficult, no matter what the age of the child is. But not being honest with them can do more harm than good. ",
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
                    "It's a good idea to plan what you're going",
                    style: TextStyle(fontSize: 20, color: Color(0xff1d303d)),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40, top: 0),
              child: Text(
                "to say in advance and schedule time so you won't be disturbed.",
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
                    "Make them comfort able before",
                    style: TextStyle(fontSize: 20, color: Color(0xff1d303d)),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 180, top: 0),
              child: Text(
                "bringing this up. ",
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
                    "Use simpler language.",
                    style: TextStyle(fontSize: 20, color: Color(0xff1d303d)),
                  ),
                ),
              ],
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
                    "Tell them about the disease, and the ",
                    style: TextStyle(fontSize: 20, color: Color(0xff1d303d)),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
              ),
              child: Text(
                " kind of treatment you might go through.",
                style: TextStyle(fontSize: 20, color: Color(0xff1d303d)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}