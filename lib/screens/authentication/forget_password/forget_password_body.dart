import 'package:crm_software/screens/authentication/componenets/component.dart';
import 'package:crm_software/screens/authentication/reset_password/reset_password_screen.dart';
import 'package:flutter/material.dart';

class ForgetPasswordBody extends StatelessWidget {

  static late String ID = '';

  TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      child: SingleChildScrollView(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30,top: 40),
              child: Text('Forget Password',
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
                      'Your Phone',
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
                            hintText:'Enter Your Phone Number'
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
             '* We will send you a message to set or reset your new password',
                    maxLines: 2,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontFamily: 'Cairo',
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                  ),
                    SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.only(left: 30,right: 40),
                    child: Row(
                      children: [
                        Text('Send Code',style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontFamily: 'Cairo',
                          fontWeight: FontWeight.bold,
                        ),),
                        Spacer(),
                        InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> ResetPasswordScreen()));
                          },
                          child: Container(
                            height: 55,
                            width: 55,
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              border: Border.all(color: Colors.white),
                              shape: BoxShape.circle
                            ),
                            child: Icon(Icons.arrow_forward,color: Colors.white,
                            size: 30,
                            ),
                          ),
                        ),
                      ],
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
