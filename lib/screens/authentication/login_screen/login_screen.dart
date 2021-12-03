import 'package:flutter/material.dart';

import 'login_body.dart';

class LoginScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image:DecorationImage(
              image: AssetImage("assets/images/background.jpg"),
              fit: BoxFit.cover
          )
      ),
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 0,
          automaticallyImplyLeading: false,
          elevation: 0,
        ),
        backgroundColor: Colors.transparent,
        body: LoginBoody(),
      ),
    );
  }
}
