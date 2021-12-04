import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:crm_software/screens/authentication/componenets/component.dart';
import 'package:crm_software/screens/authentication/reset_password/cubit/cubit.dart';
import 'package:crm_software/screens/authentication/reset_password/cubit/state.dart';
import 'package:crm_software/screens/authentication/reset_password/reset_password_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ForgetPasswordBody extends StatelessWidget {

  static late String ID = '';

  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(

      create: (BuildContext context) => ResetCubit(),
      child: BlocConsumer<ResetCubit,ResetStates>(
        listener: (context,state){},
        builder: (context, state){
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
                            'Your Email',
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
                                  controller: emailController,
                                  double:35,
                                  type: TextInputType.emailAddress,
                                  hintText:'Enter Your Email'
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
                              ConditionalBuilder(
                                  condition: state is! ResetLoadingState,
                                  builder: (context)=>InkWell(
                                    onTap: (){
                                      ResetCubit.get(context).resetPassword(email: emailController.text,context: context);
                                      // Navigator.push(context, MaterialPageRoute(builder: (context)=> ResetPasswordScreen()));
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
                                  fallback: (context) => Center(child: CircularProgressIndicator()))

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
        },
      ),
    );
  }
}
