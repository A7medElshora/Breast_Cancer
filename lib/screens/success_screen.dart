import 'package:breast_cancer/screens/simona.dart';
import 'package:flutter/material.dart';

import 'hoda.dart';

class SuccessScreen extends StatelessWidget {
  static const String routeName = 'success_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffF8CAE4),
        centerTitle: true,
        title: Text(
          "Success Stories",
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      backgroundColor: Color(0xfff3f1f1),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 5),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 12.0, vertical: 10.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              padding: EdgeInsets.only(top: 10),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Container(
                          width: 100,
                          height: 100,
                          child: Image.asset(
                            'assets/images/hind.jpg',
                          ),
                        ),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 20),
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Container(
                                width: 150,
                                height: 50,
                                child: Text(
                                  'Hind Baghdady ',
                                  style: TextStyle(
                                      color: Color(0xffF8CAE4),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Container(
                                width: 200,
                                height: 80,
                                child: Text(
                                  'Hind Kabira Baghdadi Ahmed, in her forties, is a widow and has her only child. Life was her way of being influential. She would start her day in the morning, wake up and take care of the usual household chores, and take her son to school alone.',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  showAlert(context);
                                },
                                child: Text('KNOW MORE'),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(0xffF8CAE4),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 70, vertical: 15),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ]),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 12.0, vertical: 10.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              padding: EdgeInsets.only(top: 10),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Container(
                          width: 100,
                          height: 100,
                          child: Image.asset(
                            'assets/images/simona.jpg',
                          ),
                        ),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 20),
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Container(
                                width: 150,
                                height: 50,
                                child: Text(
                                  'Simona Laban ',
                                  style: TextStyle(
                                      color: Color(0xffF8CAE4),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Container(
                                width: 200,
                                height: 80,
                                child: Text(
                                  'I am Simona Laban, 27 years old, marriedI have twins. I got married at a young age and gave birth to my children a year after marriage. My life was going wellPretty much normal, but suddenly, without warning, “kalakiya” started appearing.Under the armpit and in the breast, I told one of my friends about it, and she in turn told me that it was a hospitalBahia conducts free examinations.',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.of(context)
                                      .pushNamed(Simona.routeName);
                                },
                                child: Text('KNOW MORE'),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(0xffF8CAE4),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 70, vertical: 15),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ]),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 12.0, vertical: 10.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              padding: EdgeInsets.only(top: 10),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Container(
                          width: 100,
                          height: 100,
                          child: Image.asset(
                            'assets/images/hoda.jpg',
                          ),
                        ),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 20),
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Container(
                                width: 150,
                                height: 50,
                                child: Text(
                                  'Hoda ',
                                  style: TextStyle(
                                      color: Color(0xffF8CAE4),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Container(
                                width: 200,
                                height: 80,
                                child: Text(
                                  'I am Simona Laban, 27 years old, marriedI have twins. I got married at a young age and gave birth to my children a year after marriage. My life was going wellPretty much normal, but suddenly, without warning, “kalakiya” started appearing.Under the armpit and in the breast, I told one of my friends about it, and she in turn told me that it was a hospitalBahia conducts free examinations.',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.of(context)
                                      .pushNamed(Hoda.routeName);
                                },
                                child: Text('KNOW MORE'),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(0xffF8CAE4),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 70, vertical: 15),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ]),
            ),
          ],
        ),
      ),
    );
  }

  void showAlert(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            "Hind Baghdady",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          content: SingleChildScrollView(
              child: Text(
            "Hind Kabira Baghdadi Ahmed, in her forties, is a widow and has her only child. Life was her way of being influential. She would start her day in the morning, wake up and take care of the usual household chores, and take her son to school alone. Life was somewhat monotonous. It was I wished for a psychological change to occur. It was not until a full month after the injury... Three Hind suddenly experienced pain that took her by surprise in the area, when her friend sent her a message to Bahia Hospital to reassure her, which happened, shortly after the third and third phone calls. And the necessary tests...there is a presence of infection with the disease",
            style: TextStyle(fontSize: 18),
          )),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text(
                'OK',
                style: TextStyle(
                  color: Color(0xffF20C7F),
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
