import 'package:breast_cancer/screens/talking_children.dart';
import 'package:breast_cancer/screens/talking_partner.dart';
import 'package:breast_cancer/screens/talking_relatives.dart';
import 'package:flutter/material.dart';

import 'managing_stress.dart';

class Deals extends StatelessWidget {
  static const String routeName = 'how to deal';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: Color(0xffF8CAE4),
          title: Text(
            "How to Deal",
            style: TextStyle(
                fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 8, bottom: 8, right: 80),
                child: Text(
                  "Breast cancer and Mental\nHealth",
                  style: TextStyle(fontSize: 25, color: Color(0xff1d303d)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text(
                  "After receiving a breast cancer",
                  style: TextStyle(fontSize: 20, color: Color(0xff1d303d)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5, top: 8),
                child: Text(
                  "diagnosis, people need time to process",
                  style: TextStyle(fontSize: 20, color: Color(0xff1d303d)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5, top: 8),
                child: Text(
                  "their feelings and to figure out how to",
                  style: TextStyle(fontSize: 20, color: Color(0xff1d303d)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5, top: 8),
                child: Text(
                  "tell family and friends. Everyone's",
                  style: TextStyle(fontSize: 20, color: Color(0xff1d303d)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5, top: 8),
                child: Text(
                  "situation is unique, so it's important to",
                  style: TextStyle(fontSize: 20, color: Color(0xff1d303d)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5, top: 8),
                child: Text(
                  "do what feels right for you.",
                  style: TextStyle(fontSize: 20, color: Color(0xff1d303d)),
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 8, bottom: 0),
                    child: Row(
                      children: [
                        InkWell(
                          onTap: () {
                            ///partner
                            Navigator.of(context)
                                .pushNamed(TalkingPartner.routeName);
                          },
                          child: Container(
                            child: Image.asset(
                              "assets/images/partner.jpg",
                              width: 170,
                              height: 150,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 26, top: 8),
                          child: InkWell(
                            onTap: () {
                              ///children
                              Navigator.of(context)
                                  .pushNamed(TalkingChildren.routeName);
                            },
                            child: Container(
                              child: Image.asset(
                                "assets/images/children.jpg",
                                width: 170,
                                height: 140,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 50, left: 30),
                            child: Text(
                              "Talking to your",
                              style: TextStyle(
                                  fontSize: 22, color: Color(0xff1d303d)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 50, left: 40),
                            child: Text(
                              "Partner",
                              style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xffe13495)),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 0, left: 5),
                            child: Text(
                              "Talking to your",
                              style: TextStyle(
                                  fontSize: 22, color: Color(0xff1d303d)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 0, left: 5),
                            child: Text(
                              "Children",
                              style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xffe13495)),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 25, top: 8, bottom: 0),
                    child: Row(
                      children: [
                        InkWell(
                          onTap: () {
                            ///relatives
                            Navigator.of(context)
                                .pushNamed(TalkingRelatives.routeName);
                          },
                          child: Container(
                            child: Image.asset(
                              "assets/images/relatives.jpg",
                              width: 150,
                              height: 170,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 26, top: 8),
                          child: InkWell(
                            onTap: () {
                              ///stress
                              Navigator.of(context)
                                  .pushNamed(ManagingStress.routeName);
                            },
                            child: Container(
                              child: Image.asset(
                                "assets/images/stress.jpg",
                                width: 150,
                                height: 170,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 50, left: 40),
                              child: Text(
                                "Talking to your",
                                style: TextStyle(
                                    fontSize: 22, color: Color(0xff1d303d)),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 50, left: 40),
                              child: Text(
                                "Relatives",
                                style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xffe13495)),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Text(
                                "Managing",
                                style: TextStyle(
                                    fontSize: 22, color: Color(0xff1d303d)),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Text(
                                "Stress",
                                style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xffe13495)),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
