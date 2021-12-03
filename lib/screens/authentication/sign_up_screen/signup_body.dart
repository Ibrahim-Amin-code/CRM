import 'package:crm_software/screens/authentication/componenets/component.dart';
import 'package:crm_software/screens/authentication/login_screen/login_screen.dart';
import 'package:flutter/material.dart';

class SignUpBody extends StatelessWidget {

  TextEditingController phoneController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      child: SingleChildScrollView(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 40,top: 30),
              child: Text('Sign Up',style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontFamily: 'Cairo',
                fontSize: 40,
              ),),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 140),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 40),
                    child: Text(
                      'Phone',
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
                            hintText:'Input Your Phone'
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 40),
                    child: Text(
                      'Username',
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
                          controller: nameController,
                          double:35,
                          type: TextInputType.text,
                          hintText:'Input Your Username',

                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 40),
                    child: Text(
                      'Password',
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
                          controller: passwordController,
                          double:35,
                          type: TextInputType.visiblePassword,
                          hintText:'Input Your Password',
                          obscureText: true,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
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
                          controller: confirmPasswordController,
                          double:35,
                          type: TextInputType.visiblePassword,
                          hintText:'Input Your Confirm Password',
                          obscureText: true,
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Row(
                        children: [
                          // CheckboxListTile(value: true, onChanged: (val){}),
                          Checkbox(value: false, onChanged: (val){}),
                          Text('I agree With Terms and Privacy',
                            style: TextStyle(
                                fontSize: 12,
                                fontFamily: 'Cairo',
                                fontWeight: FontWeight.bold,
                                color: Colors.white
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment:Alignment.bottomCenter ,
                    child: defaultButton(
                      text: 'Sign Up',
                      height: 20,
                      width: 130,
                      // isUpperCase: false,
                      function: (){},
                      background: Colors.red,
                      radius: 20,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 85),
                    child: Row(
                      children: [
                        Text('Already Have An Account?',
                          style: TextStyle(
                              fontSize: 12,
                              fontFamily: 'Cairo',
                              fontWeight: FontWeight.bold,
                              color: Colors.white
                          ),
                        ),
                       TextButton(onPressed: (){
                         Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginScreen()));
                       }, child: Text('Login',style: TextStyle(
                         color: Colors.amberAccent,
                         fontWeight: FontWeight.bold,
                         fontFamily: 'Cairo',
                         fontSize: 20,
                       ),))
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
