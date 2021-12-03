import 'package:crm_software/screens/authentication/componenets/component.dart';
import 'package:crm_software/screens/authentication/login_or_signup_screen/login_or_signup_screen.dart';
import 'package:crm_software/screens/authentication/otp/pin_code_screen.dart';
import 'package:flutter/material.dart';


class FirstLoginScreen extends StatelessWidget {
  TextEditingController phoneController = TextEditingController();
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
        body: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 250),
              child: Center(
                child: Text('Welcome To Our App',style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Cairo',
                  fontSize: 25,
                ),),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 160),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 40),
                    child: Text(
                      'Input Your Phone',
                      style: TextStyle(
                          fontFamily: 'Cairo',fontSize: 16, fontWeight: FontWeight.bold,color: Colors.white
                      ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Container(
                      padding: EdgeInsets.only(left: 20,top: 15),
                      width: 300,
                      height: 45,
                      decoration: BoxDecoration(
                        // color: Colors.teal,
                        border: Border.all(
                          color: Colors.white,
                        ),
                        borderRadius:BorderRadius.circular(20),
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: buildTextField(
                            obscureText: false,
                            controller: phoneController,
                            double:35,
                            type: TextInputType.phone,
                            hintText:'Your Phone'
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Align(
                    alignment:Alignment.bottomCenter ,
                    child: defaultButton(
                      text: 'Next',
                      height: 20,
                      width: 100,
                      isUpperCase: true,
                      function: (){
                        Navigator.push(context,MaterialPageRoute(builder: (context)=> PinCodeVerificationScreen('01022952483')));
                      },
                      background: Colors.red,
                      radius: 20,
                    ),
                  ),
                ],
              ),
            ),
          ],
        )
      ),
    );
  }
}
