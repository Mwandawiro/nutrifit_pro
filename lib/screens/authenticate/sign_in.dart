import 'package:flutter/material.dart';
import 'package:nutrifit_pro/services/auth.dart';

class Signin extends StatefulWidget {
  const Signin({super.key});

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        backgroundColor: Colors.blue[400],
        elevation: 0.0,
        title: const Text('Sign in to NutriFit Pro'),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0 ),
        child:ElevatedButton(
          onPressed: () async {
            dynamic result = _auth.signInAnon();
            if (result== null){
              print('error signing in');
            }else{
              print('signed in');
              print(result);
            }
            },
          child: const Text('Sign in Anonymously')) ,
      ),
    );
  }
}