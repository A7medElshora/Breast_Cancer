import 'package:breast_cancer/auth/components/custom_text_form_field.dart';
import 'package:breast_cancer/auth/register/register_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../database_utils.dart';
import '../../dialog_utils.dart';
import '../../home/home_screen.dart';

class LoginScreen extends StatefulWidget {
  static const String routeName = 'login screen';

  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var emailController = TextEditingController(text: '');
  var passwordController = TextEditingController(text: '');
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.white,
        ),
        Image.asset(
          "assets/images/chatt.png",
          fit: BoxFit.fill,
          width: double.infinity,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
          ),
          body: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 240),
                child: Form(
                  key: formKey,
                  child: SingleChildScrollView(
                    child: Column(
                      // crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        CustomTextFormField(
                          label: 'Email ',
                          keyboardType: TextInputType.emailAddress,
                          controller: emailController,
                          validator: (text) {
                            if (text == null || text.trim().isEmpty) {
                              return 'Please enter Email Address';
                            }
                            bool emailValid = RegExp(
                                    r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                .hasMatch(text);
                            if (!emailValid) {
                              return 'Please enter a valid Email';
                            }
                            return null;
                          },
                        ),
                        CustomTextFormField(
                          label: "Password",
                          keyboardType: TextInputType.number,
                          controller: passwordController,
                          obscureText: true,
                          validator: (text) {
                            if (text == null || text.trim().isEmpty) {
                              return 'Please enter Password';
                            }
                            if (text.length < 6) {
                              return 'Password should be at least 6 chars.';
                            }
                            return null;
                          },
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: MaterialButton(
                            elevation: 5.0,
                            color: Color(0xffF8CAE4),
                            padding: const EdgeInsets.symmetric(
                                vertical: 17, horizontal: 165),
                            shape: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none,
                            ),
                            onPressed: () {
                              login();
                            },
                            child: const Text(
                              'Login',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 150),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Create New Account?',
                                  style: TextStyle(
                                      color: Colors.black54, fontSize: 22),
                                  textAlign: TextAlign.center,
                                ),
                                TextButton(
                                  onPressed: () {
                                    ///navigate to register
                                    Navigator.of(context)
                                        .pushNamed(RegisterScreen.routeName);
                                  },
                                  child: Text('Sign Up',
                                      style: TextStyle(
                                          color: Color(0xffe13495),
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold)),
                                ),
                              ]),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  void login() async {
    if (formKey.currentState?.validate() == true) {
      ///login
      DialogUtils.showLoading(context, 'Loading...');
      try {
        final credential =
            await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: emailController.text,
          password: passwordController.text,
        );
        var user = await DatabaseUtils.readUserFromFireStore(
            credential.user?.uid ?? '');
        if (user == null) {
          return;
        }

        ///hide loading
        DialogUtils.hideLoading(context);

        ///show message
        DialogUtils.showMessage(context, 'Login Successfully',
            title: 'Success', posActionName: 'OK', posAction: () {
          Navigator.of(context).pushReplacementNamed(HomeScreen.routeName);
        });
        print(credential.user?.uid ?? '');
      } on FirebaseAuthException catch (e) {
        ///hide loading
        DialogUtils.hideLoading(context);

        String errorMessage;
        if (e.code == 'user-not-found') {
          errorMessage = 'No user found for that email.';
        } else if (e.code == 'wrong-password') {
          errorMessage = 'Wrong password provided for that user.';
        } else {
          errorMessage = 'No user found for that email';
        }

        ///show message
        DialogUtils.showMessage(context, errorMessage,
            title: 'Error', posActionName: 'OK');
        print(errorMessage);
      } catch (e) {
        ///hide loading
        DialogUtils.hideLoading(context);

        ///show message
        DialogUtils.showMessage(
          context,
          e.toString(),
          title: 'Error',
          posActionName: 'OK',
        );
        print(e.toString());
      }
    }
  }
}