
import 'package:crm_software/network/local/cache_helper.dart';
import 'package:crm_software/screens/bottom_navbar_screens/notification/notificaton_screen.dart';
import 'package:crm_software/screens/bottom_navbar_screens/profile/profile_screen.dart';
import 'package:crm_software/screens/bottom_navbar_screens/search/search_screen.dart';
import 'package:crm_software/screens/home/home_screen.dart';
import 'package:crm_software/screens/layout/cubit/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppCubit extends Cubit<AppStates>{
  AppCubit() : super(AppInitialState());

  static AppCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;

  List<Widget> screens = [
    HomeScreen(),
    NotificationScreen(),
    ProfileScreen(),
    SearchScreen(),
  ];

  List<String> titles = [
    'Home',
    'Notification',
    'Profile',
    'Search',
  ];
  void changeIndex(int index) {
    currentIndex = index;
    emit(BottomNavState());
  }

  bool isDark = false;

  void changeAppMode({bool? fromShard}){
    if(fromShard != null) isDark = fromShard; else isDark = !isDark;
    CacheHelper.putBoolean(key: 'isDark', value: isDark).then((value){
      emit(AppChangeModeState());
    });
  }

}