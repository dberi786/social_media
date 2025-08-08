import 'package:flutter/material.dart';
import 'package:social/LoginPage.dart';
import 'package:social/RegisterPage.dart';
class Loginorregister extends StatefulWidget {
  const Loginorregister({super.key});

  @override
  State<Loginorregister> createState() => _LoginorregisterState();
}

class _LoginorregisterState extends State<Loginorregister> {
  //initially show login page
  bool showLoginPage = true;
  //togglr between login and register page
  void togglePages(){
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }
  @override
  Widget build(BuildContext context) {
  if (showLoginPage){
    return LoginPage(onTap: togglePages);
  }
  else{
    return RegisterPage(onTap: togglePages);
  }
  }
}
