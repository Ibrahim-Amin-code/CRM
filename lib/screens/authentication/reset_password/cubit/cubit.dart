
import 'package:bloc/bloc.dart';
import 'package:crm_software/network/end_point.dart';
import 'package:crm_software/network/remote/dio_helper.dart';
import 'package:crm_software/screens/authentication/reset_password/cubit/state.dart';
import 'package:crm_software/screens/authentication/reset_password/reset_password_screen.dart';
import 'package:crm_software/screens/bottom_navbar_screens/profile/comonent/component.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ResetCubit extends Cubit<ResetStates>
{
  ResetCubit() : super(ResetInitialState());

  static ResetCubit get(context) => BlocProvider.of(context);

  void resetPassword({
  required String email,
    context,
})
  {
    emit(ResetLoadingState());
    DioHelper.postData(
        url: PasswordReset,
        data: {
          'email':email
        }).then((value){
      if(value.data["status"] == "success"){
        Navigator.push(context, MaterialPageRoute(builder: (context)=> ResetPasswordScreen()));
        showAlertDialog(context: context,title: value.data['message']);
      } else {
        showAlertDialog(context: context,title: value.data['message']);
      }
          print(value.data);
      emit(ResetSuccessState());

    }).catchError((error)
    {
      emit(ResetErrorState(error.toString()));
    });
  }


}