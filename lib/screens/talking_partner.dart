import 'package:flutter/material.dart';

class TalkingPartner extends StatelessWidget {
  static const String routeName = 'partner screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Color(0xffF8CAE4),
        title: Text(
          "Talking to your Partner",
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
                "Talking to your Spouse About\nBreast Cancer",
                style: TextStyle(fontSize: 22, color: Color(0xff1d303d)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15, right: 15, bottom: 20, top: 20),
              child: Image.asset(
                "assets/images/partner.jpg",
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
                    "It is important to talk to your partner",
                    style: TextStyle(fontSize: 20, color: Color(0xff1d303d)),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 0),
              child: Text(
                "about the diagnosis, about your feelings ",
                style: TextStyle(fontSize: 20, color: Color(0xff1d303d)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 0),
              child: Text(
                "regarding the same, and to understand ",
                style: TextStyle(fontSize: 20, color: Color(0xff1d303d)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 30),
              child: Text(
                "each other's way of copingwith it. ",
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
                    "Take your partner along for your",
                    style: TextStyle(fontSize: 20, color: Color(0xff1d303d)),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40, top: 0),
              child: Text(
                "appointments with the doctor,whenever possible.",
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
                    "Share/Compare notes with each other ",
                    style: TextStyle(fontSize: 20, color: Color(0xff1d303d)),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, top: 0),
              child: Text(
                "after the appointment. Your partnermay  ",
                style: TextStyle(fontSize: 20, color: Color(0xff1d303d)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40, top: 0),
              child: Text(
                "have thought of questions thatmight have ",
                style: TextStyle(fontSize: 20, color: Color(0xff1d303d)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18),
              child: Text(
                "not occured to you. This will be helpful \nduring the next appointment.",
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
                    "Communicate with your partner how you",
                    style: TextStyle(fontSize: 20, color: Color(0xff1d303d)),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 0),
              child: Text(
                "want to deal with householdchores,\n if you wish to do it yourself orneed a \nhand, or wish to hire someonefor help. ",
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
                    "Surgery, chemotherapy, and other breast ",
                    style: TextStyle(fontSize: 20, color: Color(0xff1d303d)),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40, bottom: 20),
              child: Text(
                "cancer treatments can also cause body\n image issues or side effects that may \naffect mood and sexual desire. If your feelings about sex and intimacy have changed in any way, it's important to have an honest conversation with your partner about how you feel. ",
                style: TextStyle(fontSize: 20, color: Color(0xff1d303d)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}