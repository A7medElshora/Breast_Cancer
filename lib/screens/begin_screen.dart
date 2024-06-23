import 'package:flutter/material.dart';

import '../auth/login/login_screen.dart';
import '../auth/register/register_screen.dart';

class BeginScreen extends StatelessWidget {
  static const String routeName = 'Begin';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF8CAE4),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 150),
            child: Image.asset(
              "assets/images/MammoGuard-14.png",
              width: double.infinity,
              height: 70,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 150, right: 10, left: 10),
            child: MaterialButton(
              elevation: 5.0,
              color: Colors.white,
              padding:
                  const EdgeInsets.symmetric(vertical: 17, horizontal: 165),
              shape: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide.none,
              ),
              onPressed: () {
                Navigator.of(context)
                    .pushReplacementNamed(LoginScreen.routeName);
              },
              child: const Text(
                'Login',
                style: TextStyle(
                  color: Color(0xffF8CAE4),
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          MaterialButton(
            elevation: 5.0,
            color: Color(0xdad2ced0),
            padding: const EdgeInsets.symmetric(vertical: 17, horizontal: 130),
            shape: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none,
            ),
            onPressed: () {
              Navigator.of(context)
                  .pushReplacementNamed(RegisterScreen.routeName);
            },
            child: const Text(
              'Register Now',
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
