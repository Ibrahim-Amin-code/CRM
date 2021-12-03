import 'package:crm_software/screens/authentication/componenets/component.dart';
import 'package:crm_software/screens/bottom_navbar_screens/profile/profile_screens/my_account_screen.dart';
import 'package:crm_software/screens/bottom_navbar_screens/profile/profile_screens/setting_screen.dart';
import 'package:crm_software/screens/clients_management/add_client/add_client_screen.dart';
import 'package:crm_software/screens/clients_management/clientrs_management_screen.dart';
import 'package:crm_software/screens/tasks/tasks_component/tasks_component.dart';
import 'package:flutter/material.dart';

import '../component/component.dart';
import 'comonent/component.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        elevation: 1,
        title: Center(
          child: Text('My Profile', style: Theme.of(context).appBarTheme.titleTextStyle),
        ),
        // backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        // leading: InkWell(
        //     // onTap: ()=> scafolldKey.currentState!.openDrawer(),
        //     child: Icon(Icons.arrow_back_ios,color: Colors.black,size: 25,)),

      ),
      backgroundColor: Theme.of(context).backgroundColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           Center(
             child: Container(
               decoration: BoxDecoration(
                 border: Border.all(
                   color: Colors.blue
                 ),
                   shape: BoxShape.circle
               ),
                    child: Image( height: 80, width: 80,fit: BoxFit.cover, image: AssetImage('assets/images/avatar3 1.png'),
          ),
           ),
           ),
            Center(
              child: Text('Ibrahim Amin',
              style: Theme.of(context).textTheme.headline2,
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              children: [
               InkWell(
                 onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=> MyAccountScreen())),
                 child:  buildProfileCards(
                   context:  context,
                   sizeBoxWidth: 15,
                   width: 170,
                   height: 50,
                   icon: Icon(Icons.account_circle_outlined,color: Colors.blue.shade500,size: 25,),
                   iconCircleAvatar:CircleAvatar(
                     radius: 12,
                    backgroundColor: Colors.transparent,
                     child: Icon(Icons.arrow_forward_ios,size: 20,color: Colors.grey,),
                   ),
                   title: 'My Account',
                 ),
               ),
                SizedBox(width: 10,),
                InkWell(
                  onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=> SettingScreen())),
                  child: buildProfileCards(
                    context:  context,
                    sizeBoxWidth: 5,
                    title: 'Setting  ',
                    width: 140,
                    height: 50,
                    icon: Icon(Icons.settings_outlined,color: Colors.blue.shade500,size: 25,),
                    iconCircleAvatar:CircleAvatar(
                      radius: 12,
                      backgroundColor: Colors.transparent,
                      child: Icon(Icons.arrow_forward_ios,size: 20,color: Colors.grey,),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                // buildAddTaskBottomSheet
                InkWell(
                  onTap: ()=> buildAddTaskBottomSheet(context: context),
                  child: buildProfileCards(
                    context:  context,
                    sizeBoxWidth: 15,
                    width: 170,
                    height: 50,
                    icon: Icon(Icons.add_circle_outline,color: Colors.blue.shade500,size: 25,),
                    iconCircleAvatar:CircleAvatar(
                      radius: 12,
                      backgroundColor: Colors.transparent,
                      child: Icon(Icons.arrow_forward_ios,size: 20,color: Colors.grey,),
                    ),
                    title: 'Add Task',

                  ),
                ),
                SizedBox(width: 10,),
                InkWell(
                  onTap: ()=> buildMyTasksBottomSheet(context: context,mainText: 'My Tasks'),
                  child: buildProfileCards(
                    context:  context,
                    sizeBoxWidth: 7,
                    title: 'My Tasks',
                    width: 140,
                    height: 50,
                    icon: Icon(Icons.work_outline,color: Colors.blue.shade500,size: 20,),
                    iconCircleAvatar:CircleAvatar(
                      radius: 12,
                      backgroundColor: Colors.transparent,
                      child: Icon(Icons.arrow_forward_ios,size: 20,color: Colors.grey,),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                InkWell(
                  onTap: ()=> Navigator.push(context,MaterialPageRoute(builder: (context)=> AddClientScreen())),
                  child: buildProfileCards(
                    context:  context,
                    sizeBoxWidth: 15,
                    width: 170,
                    height: 50,
                    icon: Icon(Icons.person_add_alt_1_outlined,color: Colors.blue.shade500,size: 25,),
                    iconCircleAvatar:CircleAvatar(
                      radius: 12,
                      backgroundColor: Colors.transparent,
                      child: Icon(Icons.arrow_forward_ios,size: 20,color: Colors.grey,),
                    ),
                    title: 'Add client',
                  ),
                ),
               SizedBox(width: 10,),
              InkWell(
                onTap: ()=> Navigator.push(context,MaterialPageRoute(builder: (context)=> ClientsManagement())),
                child:   buildProfileCards(
                  context:  context,
                  sizeBoxWidth: 7,
                  title: 'My clients',
                  width: 143,
                  height: 50,
                  icon: Icon(Icons.group_outlined,color: Colors.blue.shade500,size: 20,),
                  iconCircleAvatar:CircleAvatar(
                    radius: 12,
                    backgroundColor: Colors.transparent,
                    child: Icon(Icons.arrow_forward_ios,size: 20,color: Colors.grey,),
                  ),
                ),
              ),
              ],
            ),
            SizedBox(height: 10,),
            buildProfileCards(
              context:  context,
              sizeBoxWidth: 7,
              title: 'Logout',
              width: 170,
              height: 50,
              icon: Icon(Icons.logout,color: Colors.blue.shade500,size: 20,),
              iconCircleAvatar:CircleAvatar(
                radius: 12,
                backgroundColor: Colors.transparent,
                child: Icon(Icons.arrow_forward_ios,size: 20,color: Colors.grey,),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

