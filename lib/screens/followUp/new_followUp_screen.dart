import 'package:crm_software/screens/authentication/componenets/component.dart';
import 'package:crm_software/screens/clients_management/add_client/component/add_client_component.dart';
import 'package:crm_software/screens/clients_management/component/component.dart';
import 'package:crm_software/screens/tasks/tasks_component/tasks_component.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'followup_component/followUp_component.dart';
//NewFollowUp

class NewFollowUp extends StatelessWidget {

  var taskDateController = TextEditingController();
  var nextTaskDateController = TextEditingController();
  var notesController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Theme.of(context).backgroundColor,
        title: Center(
            child: Text(
          'New FollowUp',
          style:Theme.of(context).textTheme.bodyText2,
        )),
        leading: InkWell(
              onTap: ()=> Navigator.pop(context),
              child: Icon(Icons.arrow_back_ios,color: Colors.grey,size: 20,)),
      ),
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: ListView(
        primary: true,
        shrinkWrap: true,
        padding: EdgeInsets.symmetric(horizontal: 7,vertical: 10),
        children: [
          buildClientCard(
            context: context,
            status: 'Cold',
            referral: 'Social media',
            email: 'ibrahimamin081@gmail.com',
            name: 'Ibrahim Amin',
            clientClass: 'A',
            clientStateColor:Colors.amberAccent ,
            phoneNum: '01022952483',
            whatsAppPhoneNum: '01022953483',
          ),
          SizedBox(
            height: 20,
          ),
          Text('Task Date',
            style: Theme.of(context).textTheme.bodyText1),

          SizedBox(
            height: 5,
          ),
          textAddTaskFormField(
              context: context,
              hintText: 'Task Date',
              controller: taskDateController,
              type: TextInputType.datetime,
              obscureText: false,
              labelText: 'Task Date',
              validator: (val) {},
              maxLines: 1
          ),
          SizedBox(height: 10,),
          Text('New Task Date',style: Theme.of(context).textTheme.bodyText1),
          SizedBox(height: 5,),
          textAddTaskFormField(
            context: context,
              hintText: 'Next Task Date',
              controller: nextTaskDateController,
              type: TextInputType.datetime,
              obscureText: false,
              labelText: 'Next Task Date',
              validator: (val) {},
              maxLines: 1
          ),
          SizedBox(height: 20,),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 10),
                height: 40,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.black12,
                  boxShadow: [
                    BoxShadow(
                        color: Theme.of(context).shadowColor,
                        // offset: Offset(0, 1),
                        // spreadRadius: 4,
                        // blurRadius: 5,
                    ),
                  ],
                ),
                child: Center(child: Text('Status',style: Theme.of(context).textTheme.bodyText1,)),

              ),
              SizedBox(width: 20,),
              Container(
                height: 40,
                width: 200,
                // padding: EdgeInsets.only(left: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white10,
                    border: Border.all(color: Colors.grey.shade200)
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: buildAddClientStatusDropDown(context: context),
                ),
              ),
            ],
          ),
          SizedBox(height: 10,),
          Text('Notes',style: Theme.of(context).textTheme.bodyText1,),
          SizedBox(height: 5,),
          Container(
            child: buildNewFollowUPFormField(
              obscureText: false,
              context: context,
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
