import 'package:breast_cancer/auth/components/custom_text_form_field.dart';
import 'package:breast_cancer/auth/login/login_screen.dart';
import 'package:breast_cancer/database_utils.dart';
import 'package:breast_cancer/dialog_utils.dart';
import 'package:breast_cancer/models/my_user.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../home/home_screen.dart';

class RegisterScreen extends StatefulWidget {
  static const String routeName = 'register screen';

  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  var nameController = TextEditingController(text: "");
  var emailController = TextEditingController(text: '');
  var passwordController = TextEditingController(text: '');
  var addressController = TextEditingController(text: '');
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          // color: Colors.white,
            ),
        Image.asset("assets/images/chatt.png",
          fit: BoxFit.fill,
          width: double.infinity,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 235),
                child: Form(
                  key: formKey,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        CustomTextFormField(
                          label: 'Full Name',
                          controller: nameController,
                          validator: (text) {
                            if (text == null || text.trim().isEmpty) {
                              return 'Please enter Full Name';
                            }
                            return null;
                          },
                        ),
                        CustomTextFormField(
                          label: 'Email',
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
                          label: 'Address',
                          keyboardType: TextInputType.text,
                          controller: addressController,
                          validator: (text) {
                            if (text == null || text.trim().isEmpty) {
                              return 'Please enter your address';
                            }
                            return null;
                          },
                        ),
                        CustomTextFormField(
                          label: 'Password',
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
                                vertical: 17, horizontal: 155),
                            shape: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none,
                            ),
                            onPressed: () {
                              register();
                            },
                            child: const Text(
                              'Sign Up',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Already have an Account?',
                                  style:
                                  TextStyle(color: Colors.black54, fontSize: 22),
                                  textAlign: TextAlign.center,
                                ),
                                TextButton(
                                  onPressed: () {
                                    ///navigate to register
                                    Navigator.of(context)
                                        .pushNamed(LoginScreen.routeName);
                                  },
                                  child: Text('Login',
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

  void register() async {
    if (formKey.currentState?.validate() == true) {
      ///register
      ///todo : show loading
      DialogUtils.showLoading(context, 'Loading...');
      try {
        final credential =
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: emailController.text,
          password: passwordController.text,
        );
        MyUser myUser = MyUser(
          id: credential.user?.uid ?? '',
          name: nameController.text,
          email: emailController.text,
        );
        await DatabaseUtils.addUserToFireStore(myUser);

        ///todo : hide loading
        DialogUtils.hideLoading(context);

        ///todo : show messege
        DialogUtils.showMessage(context, 'Register Successfully',
            title: 'Success', posActionName: 'OK', posAction: () {
          Navigator.of(context).pushReplacementNamed(HomeScreen.routeName);
        });
        print('register successfully');
        print(credential.user?.uid ?? '');
      } on FirebaseAuthException catch (e) {
        if (e.code == 'weak-password') {
          ///todo : hide loading
          DialogUtils.hideLoading(context);

          ///todo : show messege
          DialogUtils.showMessage(context, 'The password provided is too weak.',
              title: 'Error', posActionName: 'OK');
          print('The password provided is too weak.');
        } else if (e.code == 'email-already-in-use') {
          ///todo : hide loading
          DialogUtils.hideLoading(context);

          ///todo : show messege
          DialogUtils.showMessage(
              context, 'The account already exists for that email.',
              title: 'Error', posActionName: 'OK');
          print('The account already exists for that email.');
        }
      } catch (e) {
        ///todo : hide loading
        DialogUtils.hideLoading(context);

        ///todo : show messege
        DialogUtils.showMessage(context, e.toString(),
            title: 'Error', posActionName: 'OK');
        print(e);
      }
    }
  }
}