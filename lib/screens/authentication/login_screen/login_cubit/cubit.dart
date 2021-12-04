// import 'dart:js';

import 'package:bloc/bloc.dart';
import 'package:crm_software/network/end_point.dart';
import 'package:crm_software/network/remote/dio_helper.dart';
import 'package:crm_software/screens/authentication/login_screen/login_cubit/states.dart';
import 'package:crm_software/screens/bottom_navbar_screens/profile/comonent/component.dart';
import 'package:crm_software/screens/layout/layout_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginCubit extends Cubit<LoginStates>
{
  LoginCubit() : super(LoginInitialState());

  static LoginCubit get(context) => BlocProvider.of(context);

  bool isLogin = false;


  void userLogin({
    context,
  required String email,
  required String password,
})
  {
    emit(LoginLoadingState());
    DioHelper.postData(
      query: {
        'email':email,
        'password':password,
      },
      url: LOGIN,
    ).then((value) async {
      if(value.data["status"] == "success") {
        Navigator.push(context,MaterialPageRoute(builder: (context)=>LayoutScreen(index: 0)));
        SharedPreferences preferences = await SharedPreferences.getInstance();
        preferences.setBool('login', true);
        preferences.setString('userID', value.data['data']["userDetails"][1].toString());

      }
        print(value.data);

        if(email == "" || password == ""){
          showAlertDialog(title: value.data["errorArr"]['email'][0].toString() + value.data["errorArr"]['password'][0].toString(), context: context);
        }
        else{
          showAlertDialog(context: context, title:value.data["message"].toString());
        }
      emit(LoginSuccessState());

    }).catchError((error)
    {
      emit(LoginErrorState(error.toString()));
      print('error----------------------------------------------${error.toString()}');
    });
  }




}