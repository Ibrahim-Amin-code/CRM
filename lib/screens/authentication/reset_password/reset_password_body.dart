import 'package:crm_software/screens/authentication/componenets/component.dart';
import 'package:crm_software/screens/authentication/login_screen/login_screen.dart';
import 'package:crm_software/screens/authentication/sign_up_screen/signup_screen.dart';
import 'package:flutter/material.dart';

class ResetPasswordBody extends StatelessWidget {

  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      child: SingleChildScrollView(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30,top: 40),
              child: Text('Reset Password',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Cairo',
                  fontSize: 30,
                  color: Colors.white,

                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 260),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 40),
                    child: Text(
                      'New Password',
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
                            obscureText: true,
                            controller: passwordController,
                            double:35,
                            type: TextInputType.visiblePassword,
                            hintText:'Enter New Password'
                          //* We will send you a message to set or reset your new password
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 40),
                    child: Text(
                      'Confirm Password',
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
                            obscureText: true,
                            controller: confirmPasswordController,
                            double:35,
                            type: TextInputType.visiblePassword,
                            hintText:'Confirm Password'
                          //* We will send you a message to set or reset your new password
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Align(
                    alignment:Alignment.bottomCenter ,
                    child: defaultButton(
                      text: 'Login',
                      height: 20,
                      width: 130,
                      // isUpperCase: false,
                      function: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginScreen()));
                      },
                      background: Colors.red,
                      radius: 20,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
