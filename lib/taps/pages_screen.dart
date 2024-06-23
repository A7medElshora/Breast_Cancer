import 'package:breast_cancer/screens/checkup_screen.dart';
import 'package:breast_cancer/screens/deals.dart';
import 'package:breast_cancer/screens/know_more.dart';
import 'package:flutter/material.dart';

import '../auth/login/login_screen.dart';
import '../auth/register/register_screen.dart';
import '../screens/diagnosis.dart';
import '../screens/risk_factors_screen.dart';
import '../screens/self_examination.dart';
import '../screens/settings.dart';
import 'home_tap.dart';

class PagesScreen extends StatelessWidget {
  static const String routeName = 'pages screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffF8CAE4),
        centerTitle: true,
        title: Text(
          "Pages",
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      backgroundColor: Color(0xffe7e0e3),
      body: SingleChildScrollView(
        child: Column(
          verticalDirection: VerticalDirection.down,
          children: [
            InkWell(
              onTap: () {
                Navigator.of(context).pushNamed(LoginScreen.routeName);
              },
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 10, right: 8, bottom: 8, left: 8),
                child: Container(
                  width: 400,
                  height: 55,
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 10, bottom: 8, left: 10),
                    child: Text(
                      "Login",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).pushNamed(RegisterScreen.routeName);
              },
              child: Padding(
                padding:
                    const EdgeInsets.only(top: 6, right: 8, bottom: 8, left: 8),
                child: Container(
                  width: 400,
                  height: 55,
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 10, bottom: 8, left: 10),
                    child: Text(
                      "Sign Up",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).pushReplacementNamed(HomeTap.routeName);
              },
              child: Padding(
                padding:
                    const EdgeInsets.only(top: 6, right: 8, bottom: 8, left: 8),
                child: Container(
                  width: 400,
                  height: 55,
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 10, bottom: 8, left: 10),
                    child: Text(
                      "Home",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                ///self_examination
                Navigator.of(context).pushNamed(SelfExamination.routeName);
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 400,
                  height: 55,
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 10, bottom: 8, left: 10),
                    child: Text(
                      "Self Examination",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                ///know more
                Navigator.of(context).pushNamed(KnowMore.routeName);
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 400,
                  height: 55,
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 10, bottom: 8, left: 10),
                    child: Text(
                      "Know More",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                ///check up
                Navigator.of(context).pushNamed(CheckUpScreen.routeName);
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 400,
                  height: 50,
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 10, bottom: 8, left: 10),
                    child: Text(
                      "Check Up",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).pushNamed(Deals.routeName);
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 400,
                  height: 50,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 6, bottom: 8, left: 10),
                    child: Text(
                      "how to Deal",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).pushNamed(RiskFactors.routeName);
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 400,
                  height: 55,
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 10, bottom: 8, left: 10),
                    child: Text(
                      "Risk Factors",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                ///Diagnosis
                // showAlert(context);
                Navigator.of(context).pushNamed(DiagnosisScreen.routeName);
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 400,
                  height: 55,
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 10, bottom: 8, left: 10),
                    child: Text(
                      "Diagnosis",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                ///settings
                Navigator.of(context).pushNamed(Settings.routeName);
              },
              child: Padding(
                padding:
                    const EdgeInsets.only(top: 2, right: 8, bottom: 8, left: 8),
                child: Container(
                  width: 400,
                  height: 55,
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 10, bottom: 8, left: 10),
                    child: Text(
                      "Settings",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
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