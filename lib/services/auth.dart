import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';

class AuthService {

  final FirebaseAuth _auth = FirebaseAuth.instance;

  //sign in anon
  Future signInAnon() async {
    try {
      UserCredential result = await _auth.signInAnonymously();
      // ignore: unused_local_variable
      User? user = result.user;

      
    } catch (e) {
      if (kDebugMode) {
        print(e.toString());
      }
      return null;
    }
  }


  //sign in email & password

  //register with email & password

  //sign out
}