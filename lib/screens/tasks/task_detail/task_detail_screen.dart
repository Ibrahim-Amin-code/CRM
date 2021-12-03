import 'package:crm_software/screens/authentication/componenets/component.dart';
import 'package:crm_software/screens/followUp/followup_component/followUp_component.dart';
import 'package:crm_software/screens/tasks/tasks_component/tasks_component.dart';
import 'package:flutter/material.dart';

class TaskDetailsScreen extends StatelessWidget {
  var notesController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Theme.of(context).backgroundColor,
        title: Center(
            child: Text(
              'Task Details',
              style: TextStyle(
                  fontFamily: 'Cairo',
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.black),
            )),
        leading: InkWell(
          onTap: () => Navigator.pop(context),
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
            size: 20,
          ),
        ),
      ),
      body: ListView(
        primary: true,
        shrinkWrap: true,
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        children: [
          buildTodayTask(context),
          SizedBox(height: 30,),
          // SizedBox(height: 20,),
          Text('Notes',style: TextStyle(color: Colors.black54,fontFamily: 'Cairo',fontWeight: FontWeight.bold),),
          SizedBox(height: 5,),
          Container(
            child: buildNewFollowUPFormField(
              context: context,
              obscureText: false,
              maxLines: 4,
              validator: (val){},
              labelText: 'Notes',
              type: TextInputType.text,
              controller: notesController,
              hintText: 'Notes',
            ),
          ),
          SizedBox(height: 10,),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 120),
            child: defaultButton(
                radius: 10,
                height: 45,
                width: 100, background: Colors.blue, function: (){}, text: 'Save'),
          )

        ],
      ),
    );
  }
}












