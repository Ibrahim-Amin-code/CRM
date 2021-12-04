import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:crm_software/screens/authentication/componenets/component.dart';
import 'package:crm_software/screens/authentication/forget_password/forget_password_screen.dart';
import 'package:crm_software/screens/authentication/login_screen/login_cubit/cubit.dart';
import 'package:crm_software/screens/authentication/login_screen/login_cubit/states.dart';
import 'package:crm_software/screens/layout/layout_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginBoody extends StatelessWidget {

  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  static late String ID = '';
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => LoginCubit(),
      child: BlocConsumer<LoginCubit,LoginStates>(
        listener:(context, state){} ,
        builder: (context, state){
          return  Form(
            key: formKey,
            child: SingleChildScrollView(
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 40,top: 40),
                    child: Text('Login',style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Cairo',
                      fontSize: 40,
                    ),),
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
                            'Your Phone Or Username',
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
                                  type: TextInputType.text,
                                  hintText:'Your Phone Or Username',
                                  validator: (val)
                                  {
                                    if(val!.isEmpty){
                                      return 'Please enter your phone number';
                                    }
                                  }
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
                            'Your Password',
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
                                  hintText:'Password',
                                  obscureText: true,
                                  validator: (val)
                                  {
                                    if(val!.isEmpty){
                                      return 'Please enter your password';
                                    }
                                  }
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 40),
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: InkWell(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=> ForgetPasswordScreen()));
                              },
                              child: Text('Forget Passwords !?',style: TextStyle(
                                  fontFamily: 'Cairo',fontSize: 14, fontWeight: FontWeight.bold,color: Colors.white
                              ),),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Align(
                          alignment:Alignment.bottomCenter ,
                          child: ConditionalBuilder(
                            condition: state is! LoginLoadingState,
                            fallback: (context)=> CircularProgressIndicator(
                              color: Colors.orange,
                            ),
                            builder: (context)=> defaultButton(
                              text: 'Login',
                              height: 20,
                              width: 100,
                              isUpperCase: true,
                              function: (){
                                LoginCubit.get(context).userLogin(
                                  context: context,
                                  email: phoneController.text, password:  passwordController.text, //01062015106 // 123456
                                );

                                // if(formKey.currentState!.validate()){
                                //   // Navigator.push(context,MaterialPageRoute(builder: (context)=> LayoutScreen(index: 0,)));
                                //
                                // }

                              },
                              background: Colors.red,
                              radius: 20,
                            ),
                          ),
                        ),
                          SizedBox(
                            height: 10,
                          ),
                        Row(
                          // crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Login As Guest',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Cairo',
                              fontSize: 15
                            ),
                            ),
                            SizedBox(width: 10,),
                            TextButton(onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>LayoutScreen(index: 0,)));
                            },
                                child: Container(
                                  padding: EdgeInsets.symmetric(horizontal: 5),
                                  decoration: BoxDecoration(
                                    color: Colors.redAccent,
                                    borderRadius: BorderRadius.circular(10)
                                  ),
                                  child: Text('Click Her',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: 'Cairo',fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),),
                                ))
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
