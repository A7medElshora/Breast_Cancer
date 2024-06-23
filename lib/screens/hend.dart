import 'package:flutter/material.dart';

class Hind extends StatelessWidget {
  static const String routeName = 'hind_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(300),
        child: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          scrolledUnderElevation: 20,
          flexibleSpace: Container(
            child: Stack(
              children: [
                Image.asset(
                  "assets/images/photo_logiin9.jpg",
                  fit: BoxFit.cover,
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 120, right: 120, left: 20),
                  child: Image.asset(
                    "assets/images/photo_logoGuuard2.jpg",
                    width: 200,
                    height: 100,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
              child: Container(
                width: 150,
                height: 165,
                child: Image.asset('assets/images/hind.jpg', fit: BoxFit.fill),
              ),
            ),
            Padding(
                padding: const EdgeInsets.all(3.0),
                child: Container(
                  child: Text(
                    'Hind Kabira Baghdadi Ahmed, in her forties, is a widow and has her only child. Life was her way of being influential. She would start her day in the morning, wake up and take care of the usual household chores, and take her son to school alone. Life was somewhat monotonous. It was I wished for a psychological change to occur. It was not until a full month after the injury... Three Hind suddenly experienced pain that took her by surprise in the area, when her friend sent her a message to Bahia Hospital to reassure her, which happened, shortly after the third and third phone calls. And the necessary tests...there is a presence of infection with the disease',
                    style: TextStyle(
                      fontSize: 16,
                      height: 2,
                      color: Colors.black,
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
