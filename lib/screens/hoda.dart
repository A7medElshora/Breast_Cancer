import 'package:flutter/material.dart';

class Hoda extends StatelessWidget {
  static const String routeName = 'hoda_screen';
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
              child: Image.asset('assets/images/hoda.jpg', fit: BoxFit.fill),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(3.0),
            child: Container(
              child: Text(
                "“I found out I had cancerBreasts before high school exams, and without thinking, I decided not to tell anyone in the familyIn fact, all that was on my mind at that time was the chaos that would strike my familyWhich I spent my whole life trying to arrange. My children were in high school,I could not further distract them, so silence was the best solution. I waited 4 months for it to endHer children passed their high school exams, then she decided to reveal the secret to them.” Hoda is a womanShe is in her fifties, married with two children, and a breast cancer fighter.Hoda has been married for approximatelyShe is 25 years old and has two children, a boy and a girl. She began her treatment journey with...Cancer since 2014, during which she faced great difficulties, but in the end it was an ordeal for herDivine grant.Hoda talks about her journey with breast cancer:“Since I stood in front of the Bahia Hospital building, I decided to surrender, on the road leading toThe hospital saw women receiving treatment. I felt very afraid, the mental image that...I have a scary cancer diagnosis, so I decided to give up, but I went along just to satisfy myselfMy husband, but deep down I was intending to give up.”Inside Bahia Hospital you standMrs. Hoda looks at the women who are moving quietly inside the hospital corridors.What was surprising to her was how they kept a smile on their faces, she saysHoda: “I did not know the reason at the time for the smile of satisfaction that appeared on the faces of the womenCancer patients, we call it “the monster disease,” no one escapes from it.It is the highway to death...or so I thought.”It was my first experience in hospitalsDonation-based, when I used to see ads that talk about free treatmentI didn't completely believe it, but in Baheya I believed it because I was oneOf the women who received treatment without financial costs, this was the first observationTo me at Bahia Hospital, the second note was a divine message, I was lying on someoneThe family and I prayed to God to ease my pain or restore His faithfulness, at that moment I heardA patient passing by tells the doctor that she has dealt with the disease for about 18 years.As she had to remove her left breast, she realized that the disease is not the end of lifeThe woman was injured and received the necessary treatment 18 years ago.This woman lived after her injuryNearly twenty years, so why not do it again!In addition to the great medical attention it receivesThere is a side to the breast cancer fighters at Baheya Hospital that does not appear in numbers and statisticsTreatment, here I am talking about psychological support, how to take psychological care of breast cancer patientsIn addition to medical treatment, it was a surprise to me that the hospital turned into a large family for meto,liveinInside it of my own free will. How did the story begin?One day, when I was visitingA routine visit to the hospital for tests found a room marked “Support“Psychiatric,” I inquired about the matter and one of the patients told me that this department’s mission isPsychological rehabilitation for female patients, so the decision was to learn more about the matter, so I jumped inInside the psychological support room, and since then I have not left that room except for an applicationI learned it inside her, I knew how to deal with patients and how to give them hope and not abandon themFor dark thoughts, I certainly learned how not to surrender to the disease and let it destroy meMy life.. The lesson I learned from the “Baheya” family is that there is alwayshopeThe most important weapon to confro cancer and the weapon most capable of defeating it. ",
                style: TextStyle(
                  fontSize: 16,
                  height: 2,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
