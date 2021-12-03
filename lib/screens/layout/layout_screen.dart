import 'package:crm_software/screens/authentication/componenets/component.dart';
import 'package:crm_software/screens/bottom_navbar_screens/notification/notificaton_screen.dart';
import 'package:crm_software/screens/bottom_navbar_screens/profile/profile_screen.dart';
import 'package:crm_software/screens/home/home_screen.dart';
import 'package:crm_software/screens/layout/cubit/cubit.dart';
import 'package:crm_software/screens/layout/cubit/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LayoutScreen extends StatefulWidget {

  final int index;

  const LayoutScreen({Key? key,required this.index}) : super(key: key);

  @override
  _LayoutScreenState createState() => _LayoutScreenState();
}

class _LayoutScreenState extends State<LayoutScreen> {

  @override
  Widget build(BuildContext context) {
    var cubit = AppCubit.get(context);
    return BlocConsumer<AppCubit,AppStates>(
      listener: (context , state){

      },
      builder: (context , state){
        return Scaffold(
          backgroundColor: Colors.white,
          body: cubit.screens[cubit.currentIndex],
          bottomNavigationBar:  BottomNavigationBar(

            // backgroundColor: Colors.white,
            currentIndex: cubit.currentIndex,
            onTap: (index) {
              cubit.changeIndex(index);
            },
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',),
              BottomNavigationBarItem(
                  icon: Icon(Icons.notifications_none_outlined),
                  label: 'Notification'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person_outline),
                  label: 'Profile'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search),
                  label: 'Search'),
            ],
            // type: BottomNavigationBarType.fixed,
            // selectedLabelStyle: TextStyle(fontFamily: 'Cairo',fontSize: 10,fontWeight: FontWeight.bold,color: HexColor('#2972B7')),
            // unselectedLabelStyle: TextStyle(fontFamily: 'Cairo',fontSize: 10,fontWeight: FontWeight.bold,color: HexColor('#626262')),
            // iconSize: 25,

          ),
        );
      },
    );
  }
}
