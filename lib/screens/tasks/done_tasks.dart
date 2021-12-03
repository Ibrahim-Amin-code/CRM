import 'package:crm_software/screens/authentication/componenets/component.dart';
import 'package:crm_software/screens/tasks/tasks_component/tasks_component.dart';
import 'package:flutter/material.dart';

class DoneTask extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Theme.of(context).backgroundColor,
        title: Center(
            child: Text(
              'Done Tasks',
              style:Theme.of(context).textTheme.bodyText2,
            )),
        leading: InkWell(
          onTap: () => Navigator.pop(context),
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.grey,
            size: 20,
          ),
        ),
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        primary: true,
        shrinkWrap: true,
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        children: [
          // buildDoneTask(context),
          // SizedBox(height: 10,),
          ListView.separated(
              shrinkWrap: true,
              primary: false,
              itemBuilder: (context,index) =>buildDoneTask(context),
              separatorBuilder: (context,index)=> SizedBox(height: 10,),
              itemCount: 10)
        ],
      ),
    );
  }
}












