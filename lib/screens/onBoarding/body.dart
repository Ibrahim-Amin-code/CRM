// import 'package:crm_app/screens/authentication/first_login_screen/first_login_screen.dart';
import 'package:crm_software/screens/authentication/componenets/component.dart';
import 'package:crm_software/screens/authentication/first_login/first_login_screen.dart';
import 'package:crm_software/screens/authentication/login_or_signup_screen/login_or_signup_body.dart';
import 'package:crm_software/screens/authentication/login_or_signup_screen/login_or_signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'onBoarding_content.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
   bool isLast = false;

  List<Map<String, String>> splashData = [
    {"text": 'Increase Your Sales', "image": "assets/images/page1.jpg"},
    {"text": 'Improve Yourself', "image": "assets/images/page2 (2).jpg"},
    {"text": 'Spend Time Developing', "image": "assets/images/page3.jpg"},
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
          color: Colors.white,
      width: double.infinity,
      child: Column(
        children: <Widget>[
          Expanded(
            flex: 3,
            child: PageView.builder(
              physics: BouncingScrollPhysics(),
              onPageChanged: (value)
                {
                    setState(() {
                      currentPage = value;
                    });

                    if(currentPage == splashData.length-1){
                      setState(() {
                        isLast = true;
                      });
                    }
                },
              itemCount: splashData.length,
              itemBuilder: (context, index) =>
                  SplashContent(
                image: splashData[index]["image"].toString(),
                text: splashData[index]['text'].toString(),
              ),
            ),
          ),

          Expanded(
            flex: 1,
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 30,
                ),
                (isLast)?  Container(
                  width: 225,
                  height:43,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Center(
                    child: InkWell(
                       onTap: () async{
                         Navigator.pushAndRemoveUntil(
                           context,
                           MaterialPageRoute(
                             builder: (context) => FirstLoginScreen(),
                           ),
                               (Route<dynamic> route) => false,
                         );
                         SharedPreferences preferences = await SharedPreferences.getInstance();
                         preferences.setBool('onBoarding', true);
                       },
                      child: Text('Next',style: TextStyle(
                        fontFamily: 'Cairo',fontWeight: FontWeight.bold,fontSize: 17,color: Colors.white,
                      ),),
                    ),
                  ),
                ) : Container(),
                SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    splashData.length,
                    (index) => buildDot(index: index),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }

  AnimatedContainer buildDot({required int index}) {
    return AnimatedContainer(
      duration: Duration(
        milliseconds:  250
      ),
      margin: EdgeInsets.only(right: 15),
      height: 5,
      width: currentPage == index ? 30 : 15,
      decoration: BoxDecoration(
        color: currentPage == index ?  Colors.purpleAccent.shade400 : Colors.grey ,
        borderRadius: BorderRadius.circular(30),
      ),
    );
  }
}


