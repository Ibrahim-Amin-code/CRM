
import 'package:crm_software/screens/bottom_navbar_screens/component/component.dart';
import 'package:flutter/material.dart';

import 'component/component.dart';

class NotificationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        elevation: 0.5,
        // backgroundColor: Colors.white,
        title:  Padding(
          padding: const EdgeInsets.only(right: 30),
          child: Center(
            child: Text('Notifications',),
          ),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 15,),
        physics: BouncingScrollPhysics(),
        primary: true,
        shrinkWrap: true,
        children: [
          SizedBox(
            height: 10,
          ),
          Text('Notifications',style:
          Theme.of(context).textTheme.headline2
          ),
            // SizedBox(height: 20,),
          ListView.separated(
            shrinkWrap: true,
              primary: false,
              itemBuilder: (context,index) => buildChatItem(context),
              separatorBuilder: (context,index) =>  myDivider(height: 1),
              itemCount: 10)
        ],
      ),
    );
  }
}

