import 'package:flutter/material.dart';


class KnowMore extends StatelessWidget {
  static const String routeName = 'Know More';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Color(0xffF8CAE4),
          centerTitle: true,
          title: Text(
            "Know More",
            style: TextStyle(
                fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    top: 10, left: 10, right: 10, bottom: 10),
                child: Image.asset("assets/images/photo_know.jpg"),
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(top: 10, left: 15, right: 10),
                  child: Text(
                    "There are things you should know to understand what breast cancer is, know your chances for getting it, and how tofind it early. Finding breast cancer early iscritical because then it is easier to treat.This app will assist you in understandingBreast Cancer, and also be a friend andguide in your journey of recovery.",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 10),
                child: Row(
                  children: [
                    Image.asset(
                      "assets/images/photo_1 hand.jpg",
                      width: 100,
                      height: 100,
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding:
                            const EdgeInsets.only(top: 0, left: 10, right: 0),
                        child: Text(
                          "Breast Cancer is the \nsecondmost common cancer\namongwomen, after skin cancer.",
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 10),
                child: Row(
                  children: [
                    Image.asset(
                      "assets/images/photo_2 mouth.jpg",
                      width: 100,
                      height: 100,
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding:
                            const EdgeInsets.only(top: 0, left: 10, right: 0),
                        child: Text(
                          "It is still a taboo in many \nparts of the country and not \ndiscussed openly.",
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 10),
                child: Row(
                  children: [
                    Image.asset(
                      "assets/images/photo_3 blood.jpg",
                      width: 100,
                      height: 100,
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 10, left: 10, bottom: 25),
                        child: Text(
                          "Due to lack of awareness,more \nthan 60% of breast cancers \npresent in advanced stages, \nwith most patients succumbing \nwithin a year of been \ndiagnosed.",
                          style: TextStyle(fontSize: 18),
                        ),
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
