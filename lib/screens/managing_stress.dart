import 'package:flutter/material.dart';

class ManagingStress extends StatelessWidget {
  static const String routeName = 'stress screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Color(0xffF8CAE4),
        title: Text(
          "Managing Stress",
          style: TextStyle(
              fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  left: 15, right: 15, bottom: 20, top: 20),
              child: Image.asset(
                "assets/images/stress.jpg",
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
                    "As the patient, you need to focus on the",
                    style: TextStyle(fontSize: 20, color: Color(0xff1d303d)),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40, top: 0),
              child: Text(
                "most important aspect of your recovery - Mental Health.",
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
                    "Physical, emotional, financial hard ships",
                    style: TextStyle(fontSize: 20, color: Color(0xff1d303d)),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40, top: 0),
              child: Text(
                "often persist through and after the treatment.",
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
                    "Side effects such as insomnia, memory",
                    style: TextStyle(fontSize: 20, color: Color(0xff1d303d)),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40),
              child: Text(
                "changes and mood swings. Hormone level changes can influence your emotions, and weight gain can be discouraging.",
                style: TextStyle(fontSize: 20, color: Color(0xff1d303d)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
              child: Center(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xffF8CAE4),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Text(
                      "Your Doctor may suggest\nconsultinga Psychologist to help\n cope with the emotional stress\n related to your diagnosis.",
                      style: TextStyle(fontSize: 20, color: Color(0xff1d303d)),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Icon(
                Icons.arrow_downward_sharp,
                color: Color(0xffe13495),
                size: 70,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 0, left: 20, right: 20),
              child: Center(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xffF8CAE4),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(25),
                    child: Text(
                      "Psychologists can help you\n become more fully engaged in \nyour own treatment.",
                      style: TextStyle(fontSize: 20, color: Color(0xff1d303d)),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Icon(
                Icons.arrow_downward_sharp,
                color: Color(0xffe13495),
                size: 70,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 0, left: 40, right: 40, bottom: 20),
              child: Center(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xffF8CAE4),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Text(
                      "Counselling is extremely \nimportant. It involves discussion about the diagnosis and various treatment options by the specialist in a sensitive and supportive environment.",
                      style: TextStyle(fontSize: 20, color: Color(0xff1d303d)),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}