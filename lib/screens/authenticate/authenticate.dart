import 'package:flutter/material.dart';
import 'package:nutrifit_pro/screens/authenticate/sign_in.dart';

class Authenticate extends StatefulWidget{
  const Authenticate({super.key});

  @override
  State createState() => _AuthenticateState();
}
class _AuthenticateState extends State<Authenticate>{
  @override
  Widget build(BuildContext context) {
    return const Signin();
  }
}