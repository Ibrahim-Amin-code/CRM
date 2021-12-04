import 'package:bloc/bloc.dart';
import 'package:crm_software/network/end_point.dart';
import 'package:crm_software/network/remote/dio_helper.dart';
import 'package:crm_software/screens/authentication/reset_password/cubit/state.dart';
import 'package:crm_software/screens/authentication/reset_password/reset_password_screen.dart';
import 'package:crm_software/screens/bottom_navbar_screens/profile/comonent/component.dart';
import 'package:crm_software/screens/bottom_navbar_screens/profile/profile_screens/update_my_account/cubit/state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UpdateAccountCubit extends Cubit<UpdateAccountStates>
{
  UpdateAccountCubit() : super(UpdateAccountInitialState());

  static UpdateAccountCubit get(context) => BlocProvider.of(context);

  var data;

  void getUpdateAccount()
  {
    emit(GetMyAccountLoadingState());

    DioHelper.getData(url: MyAccount).then((value) {
      // print(value.data);
      emit(GetMyAccountSuccessState());
      data = value.data;
      print(data['message']);
      return data['data'];
    }).catchError((error)
    {
      emit(GetMyAccountErrorState(error.toString()));
    });
  }


  void updateAccount({
  required String username,
  required String email,
  required String password,
  required String phone,
    context,
}){
    emit(UpdateAccountLoadingState());
    DioHelper.postData(
        url: UpdateMyAccount,
        data: {
          'username':username,
          'email':email,
          'password':password,
          'phone':phone,
        }).then((value) {
          print(value.data['message']);
      emit(UpdateAccountSuccessState());
    }).catchError((error)
    {
      emit(UpdateAccountErrorState(error.toString()));

    });
  }

}