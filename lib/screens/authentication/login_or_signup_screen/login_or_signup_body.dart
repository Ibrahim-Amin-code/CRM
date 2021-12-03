import 'package:crm_software/screens/authentication/componenets/component.dart';
import 'package:crm_software/screens/authentication/login_screen/login_screen.dart';
import 'package:crm_software/screens/authentication/sign_up_screen/signup_screen.dart';
import 'package:flutter/material.dart';

class LoginOrSignupBody extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 110),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              // mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Welcome Back Make Your Job Easy',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontFamily: 'Cairo',
                  fontWeight: FontWeight.bold,

                ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 1),
                  height: 40,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.cyanAccent
                    ),
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: defaultButton(
                    text: 'Login',
                    width: 200,
                    isUpperCase: true,
                    function: (){
                      Navigator.push(context,  MaterialPageRoute(builder: (context)=> LoginScreen()));
                    },
                    // background: Colors.transparent,
                    radius: 20,
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  height: 40,
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.cyanAccent
                      ),
                      borderRadius: BorderRadius.circular(20)
                  ),
                  child: defaultButton(
                    text: 'Sign Up',
                    width: 200,
                    isUpperCase: true,
                    function: (){
                      Navigator.push(context,  MaterialPageRoute(builder: (context)=> SignUpScreen()));
                    },
                    // background: Colors.transparent,
                    radius: 20,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
