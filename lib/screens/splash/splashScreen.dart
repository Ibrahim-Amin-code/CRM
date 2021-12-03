import 'dart:async';
import 'package:crm_software/screens/authentication/componenets/component.dart';
import 'package:crm_software/screens/authentication/first_login/first_login_screen.dart';
import 'package:crm_software/screens/authentication/login_or_signup_screen/login_or_signup_screen.dart';
import 'package:crm_software/screens/layout/layout_screen.dart';
import 'package:crm_software/screens/onBoarding/onBoarding.dart';
import 'package:crm_software/screens/splash/body.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Splash extends StatefulWidget {

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {

Widget screen = OnBoardingScreen();

getScreen() async{
  SharedPreferences _sp = await SharedPreferences.getInstance();
  final onboard = _sp.getBool('onBoarding');
  final auth = _sp.getBool('login');
  if(onboard == true){
    if(auth == true){
      setState(() {
        screen = LayoutScreen(index: 0,);
      });
    }else{
      setState(() {
        screen = FirstLoginScreen();
      });
    }
  }else{
    setState(() {
      screen = OnBoardingScreen();
    });
  }
}

  @override
  void initState() {
  this.getScreen();
    super.initState();
    Timer(
        Duration(seconds: 3),
            () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => screen)));
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor:HexColor('#3b5998'),
        toolbarHeight: 0,
        automaticallyImplyLeading: false,
        elevation: 0,
      ),
      body: SplashBody(),
    );
  }
}
