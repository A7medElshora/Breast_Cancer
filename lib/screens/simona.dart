import 'package:flutter/material.dart';

class Simona extends StatelessWidget {
  static const String routeName = 'simona_screen';
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
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
            child: Container(
              width: 150,
              height: 165,
              child: Image.asset('assets/images/simona.jpg', fit: BoxFit.fill),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(3.0),
            child: Container(
              child: Text(
                "I am Simona Laban, 27 years old, marriedI have twins. I got married at a young age and gave birth to my children a year after marriage. My life was going wellPretty much normal, but suddenly, without warning, “kalakiya” started appearing.Under the armpit and in the breast, I told one of my friends about it, and she in turn told me that it was a hospitalBahia conducts free examinations. At first, I did not really pay attention to the matter, but my friend insistedI needed to go to check up, I made a phone call and told them about the symptoms I had, but I did notOnly a few days passed until I received a phone call from the hospital informing me of the examination date.The next day, I went to the appointment Exactly, when I stood in front of the hospital and saw the sign that read, “Bahia for examinatioEarly detection of breast cancer. I felt very afraid. I gathered my strength and decided to try itTo the end, withoutFully charged.Three days after the tests were performedAnd x-rays, I received a phone call from the hospital telling me that I had to come in for something like thatMeeting with the doctor, I received the news like a thunderbolt. The doctor tried to tell meAs my disease progressed gradually,, but all I cared about was what would happen to my children.I decided to stick together and start a journeyTreatment, during which I discovered Bahia Hospital more and more, there I found great comfort and care, sinceThe first day there was complete psychological support. The doctor sat with me and told me the treatment plan.I listened to him carefully, and decided that I would not leave my children alone and would fight the disease for them,And death at the same time.At Bahia Hospital, I began to rediscover myself,Once again, I had given myself only to my children, my world was extremely small, and I discovered who,During Bahiya there was another world, there I learned how to do manual labor, in Bahiya there they yolun,There is great interest in psychological support through more than one method. There are workshops in various fields,different and diverse,Through these workshops, I learned many skills that gave me double support to move on,I'm new to life and I'm much better now thanks to Bahia's familyExactly, when I stood in front of the hospital and saw the sign that read, “Bahia for examinationEarly detection of breast cancer. I felt very afraid.I gathered my strength and decided to try itTo the end, I actually thought it would be extremely tiring and exhausting, , I learned many skills that gave me double support to move onI'm new to life and I'm much better now thanks to Bahia's family.",
                style: TextStyle(
                  fontSize: 16,
                  height: 1.5,
                  color: Colors.black,
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
