import 'package:breast_cancer/database_utils.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../../models/my_user.dart';

class UserProvider extends ChangeNotifier {
  MyUser? user;
  User? firebaseUser ;

  UserProvider(){
    firebaseUser = FirebaseAuth.instance.currentUser;
    initUser();
  }

  initUser() async{
    if(firebaseUser != null) {
      user = (await DatabaseUtils.getUser(firebaseUser?.uid ?? '')) as MyUser?;
    }
  }
}
