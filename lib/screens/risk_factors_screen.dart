import 'package:flutter/material.dart';

class RiskFactors extends StatelessWidget {
  static const String routeName = 'risk factors';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xffF8CAE4),
        centerTitle: true,
        title: Text(
          "RISK FACTORS",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Center(
                child: Text(
                  "Breast Cancer",
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54),
                ),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 12, left: 60, right: 10),
                  child: Image.asset(
                    "assets/images/heredity.jpg",
                    width: 70,
                    height: 70,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 12, left: 40, right: 20),
                  child: Image.asset(
                    "assets/images/lifestyle.jpg",
                    width: 50,
                    height: 50,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 12, left: 40),
                  child: Image.asset(
                    "assets/images/age.jpg",
                    width: 70,
                    height: 70,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 55),
                  child: Text(
                    "Heredity",
                    style: TextStyle(fontSize: 18, color: Colors.black54),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 55),
                  child: Text(
                    "Lifestyle",
                    style: TextStyle(fontSize: 18, color: Colors.black54),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 62),
                  child: Text(
                    "Age",
                    style: TextStyle(fontSize: 18, color: Colors.black54),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 40, left: 60, right: 10),
                  child: Image.asset(
                    "assets/images/obesity.jpg",
                    width: 70,
                    height: 70,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40, left: 40, right: 0),
                  child: Image.asset(
                    "assets/images/pregnancy.jpg",
                    width: 70,
                    height: 70,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40, left: 40),
                  child: Image.asset(
                    "assets/images/diabetes.jpg",
                    width: 70,
                    height: 75,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 65),
                  child: Text(
                    "Obesity",
                    style: TextStyle(fontSize: 18, color: Colors.black54),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 52),
                  child: Text(
                    "Pregnancy",
                    style: TextStyle(fontSize: 18, color: Colors.black54),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Text(
                    "Diabetes",
                    style: TextStyle(fontSize: 18, color: Colors.black54),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 40, left: 120, right: 25),
                  child: Image.asset(
                    "assets/images/hypertention.jpg",
                    width: 70,
                    height: 70,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40, left: 40),
                  child: Image.asset(
                    "assets/images/hermones.jpg",
                    width: 70,
                    height: 70,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 110),
                  child: Text(
                    "  Essential\nHypertension",
                    style: TextStyle(fontSize: 18, color: Colors.black54),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: Text(
                    "Hormones",
                    style: TextStyle(fontSize: 18, color: Colors.black54),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 50, left: 10, bottom: 10, right: 10),
              child: Center(
                child: Text(
                  "Ways to reduce your Risk",
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54),
                ),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30, left: 65, right: 40),
                  child: Image.asset(
                    "assets/images/smoke.jpg",
                    width: 70,
                    height: 70,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30, left: 100),
                  child: Image.asset(
                    "assets/images/breastfeed.jpg",
                    width: 70,
                    height: 60,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 55),
                  child: Text(
                    "Do no Smoke",
                    style: TextStyle(fontSize: 18, color: Colors.black54),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 101),
                  child: Text(
                    "Breastfeed",
                    style: TextStyle(fontSize: 18, color: Colors.black54),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30, left: 65, right: 40),
                  child: Image.asset(
                    "assets/images/control_weight.jpg",
                    width: 70,
                    height: 70,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30, left: 100),
                  child: Image.asset(
                    "assets/images/physically.jpg",
                    width: 70,
                    height: 60,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 55),
                  child: Text(
                    "Control Your\n   Weight",
                    style: TextStyle(fontSize: 18, color: Colors.black54),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 101),
                  child: Text(
                    "Be Physically\n    Active",
                    style: TextStyle(fontSize: 18, color: Colors.black54),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30, left: 65, right: 40),
                  child: Image.asset(
                    "assets/images/alcohol.jpg",
                    width: 70,
                    height: 70,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30, left: 105),
                  child: Image.asset(
                    "assets/images/avoid_exposure.jpg",
                    width: 70,
                    height: 60,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 55),
                  child: Text(
                    "Limit or Avoid\n    Alcohol",
                    style: TextStyle(fontSize: 18, color: Colors.black54),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 95),
                  child: Text(
                    "Avoid exposure\n to radiations",
                    style: TextStyle(fontSize: 18, color: Colors.black54),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}