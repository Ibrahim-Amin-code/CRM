import 'package:crm_software/screens/authentication/componenets/component.dart';
import 'package:crm_software/screens/bottom_navbar_screens/component/component.dart';
import 'package:crm_software/screens/bottom_navbar_screens/profile/comonent/component.dart';
import 'package:crm_software/screens/tasks/task_detail/task_detail_screen.dart';
import 'package:crm_software/screens/tasks/today_task.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../done_tasks.dart';
import '../late_task.dart';

buildMyTasksBottomSheet({
  @required context,
  required String mainText,
}){
  return showModalBottomSheet(
      backgroundColor: Colors.transparent,
      context: context,
      isDismissible: true,
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(15),
              topLeft: Radius.circular(15))),
      builder: (context) {
        return Stack(
          children: [
            Image.asset('assets/images/tasks22.jpg',fit: BoxFit.cover,),
            ListView(
              padding: EdgeInsets.only(right: 5,left: 5,),
              primary: true,
              shrinkWrap: true,
              children: [
                SizedBox(height: 5,),
                Padding(
                  padding: const EdgeInsets.only(left: 140),
                  child: Row(
                    children: [
                      Text(
                        mainText,
                        style: TextStyle(
                            color: HexColor('#3E5481'),
                            fontFamily: 'Cairo',
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                      SizedBox(width: 105,),
                      InkWell(
                        onTap: ()=> Navigator.pop(context),
                        child: CircleAvatar(
                          child: Icon(
                            Icons.close,
                            size: 25,
                            color: Colors.white,
                          ),
                          backgroundColor: Colors.black12,
                          radius: 15,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                InkWell(
                    onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> TodayTask())),
                    child: buildTasksOptionsInMyTasksBottomSheet(title: 'Today Tasks',color: Colors.yellowAccent)),
                SizedBox(height: 10,),
                InkWell(
                    onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> DoneTask())),
                    child: buildTasksOptionsInMyTasksBottomSheet(title: 'Done Tasks',color: Colors.greenAccent)),
                SizedBox(height: 10,),
                InkWell(
                    onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> LateTask())),
                    child: buildTasksOptionsInMyTasksBottomSheet(title: 'Late Tasks',color: Colors.redAccent)),
              ],
            ),
          ],
        );
      });
}

Widget buildTasksOptionsInMyTasksBottomSheet({
  required String title,
  required Color color,
}) => Container(
  margin: EdgeInsets.symmetric(horizontal: 20),
  decoration: BoxDecoration(
    color: Colors.white54,
    borderRadius: BorderRadius.circular(10),
    boxShadow: [
      BoxShadow(
          color: Colors.black26,
          offset: Offset(0, 1),
          spreadRadius: 4,
          blurRadius: 5)
    ],
  ),
  // height: 25,
  width: 80,
  child: Container(
    height: 45,
    child: Center(
      child: Text(
        title,
        style: TextStyle(
          fontFamily: 'Cairo',
          fontSize: 16,
          color: color,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  ),
);


buildAddTaskBottomSheet({
  @required context
}){
  var detailsController = TextEditingController();
  var taskDateController = TextEditingController();
  var nextTaskDateController = TextEditingController();
  return showModalBottomSheet(
      // backgroundColor: Colors.white,
      context: context,
      isDismissible: true,
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(15),
              topLeft: Radius.circular(15))),
      builder: (context) {
        return Container(
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/images/5665.jpg',),fit: BoxFit.cover)
          ),
          child: Padding(
            padding: MediaQuery.of(context).viewInsets,
            child: ListView(
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
              primary: true,
              shrinkWrap: true,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 140),
                  child: Row(
                    children: [
                      Text(
                        'Add Task',
                        style: Theme.of(context).textTheme.headline2,
                      ),
                      Spacer(),
                      InkWell(
                        onTap: ()=> Navigator.pop(context),
                        child: CircleAvatar(
                          backgroundColor: Colors.grey.shade500,
                          radius: 15,
                          child: Icon(
                            Icons.close,
                            size: 25,
                            color: Colors.white,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Container(
                      height: 50,
                      width: 130,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white10,
                        border: Border.all(color: Colors.grey.shade200)
                      ),
                      child: Center(child: Text('Client Status',style: Theme.of(context).textTheme.bodyText1)),

                    ),
                    SizedBox(width: 30,),
                    Container(
                      height: 50,
                      width: 180,
                      // padding: EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white10,
                          border: Border.all(color: Colors.grey.shade200)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: buildAddTaskDropDown(context),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                textAddTaskFormField(
                  context: context,
                    hintText: 'Details Task',
                    controller: detailsController,
                    type: TextInputType.text,
                    obscureText: false,
                    labelText: 'Details Task',
                    validator: (val) {},
                     maxLines: 5
                ),
                SizedBox(height: 10,),
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
                SizedBox(height: 10,),
                Container(
                  margin: EdgeInsets.only(right: 220),
                  width: 100,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade500,
                       borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text('Chose Client',style: TextStyle(
                      fontSize: 14,color: Colors.black,fontFamily: 'Cairo',fontWeight: FontWeight.w500,
                    ),),
                  ),
                ),
                SizedBox(height: 20,),
                Center(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: HexColor('#2972B7'))
                        ),
                    height: 40,
                    width: 80,
                    child: Center(
                      child: Text(
                        'Add',
                        style: TextStyle(
                          fontFamily: 'Cairo',
                          fontSize: 16,
                          color:  HexColor('#2972B7'),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 5,)
              ],
            ),
          ),
        );
      });
}

 Widget buildAddTaskDropDown(context)=> DropdownButtonHideUnderline(
   child: DropdownButton<String>(
     items: <String>[' Client Status','A', 'B', 'C', 'D',].map((String value) {
       return DropdownMenuItem<String>(
         value: value,
         child: Text(value),
       );
     }).toList(),
     elevation: 0,
     value: ' Client Status',
     menuMaxHeight: 150,
     style: Theme.of(context).textTheme.bodyText1,
     dropdownColor: Colors.grey.shade400,
     icon: Icon(Icons.arrow_drop_down_circle_outlined,color: Colors.white,size: 20,),
     onChanged: (value) {
       value = value;
     },
   ),
 );


Widget textAddTaskFormField({
  context,
  required String hintText,
  required String labelText,
  required TextEditingController controller,
  required TextInputType type,
  int? maxLines,
  FormFieldValidator<String>? validator,
  required bool obscureText,
})=> TextFormField(
  style: Theme.of(context).textTheme.bodyText1,
    validator: validator,
    controller: controller,
    keyboardType: type,
    maxLines: maxLines,
    obscureText:  obscureText,
    decoration: InputDecoration(
      floatingLabelBehavior: FloatingLabelBehavior.always,
      labelText: labelText,
      labelStyle: TextStyle(color: Colors.blue, fontSize: 16, fontFamily: 'Cairo'),
      hintText: hintText,
      hintStyle: Theme.of(context).textTheme.bodyText1,
      enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: HexColor("#E6E6E6")),borderRadius: BorderRadius.circular(30)),
      focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: HexColor("#E6E6E6")),borderRadius: BorderRadius.circular(30)),
      border: OutlineInputBorder(borderSide: BorderSide(color: HexColor("#E6E6E6")),borderRadius: BorderRadius.circular(30)),
    ));


Widget buildTodayTask(context) => InkWell(
      onTap: () => Navigator.push(context,
          MaterialPageRoute(builder: (context) => TaskDetailsScreen())),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        width: double.infinity,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: Theme.of(context).shadowColor,
                // offset: Offset(0, 1),
                // spreadRadius: 4,
                // blurRadius: 5,
            )
          ],
          color: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            SizedBox(
              width: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'Type: ',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Cairo',
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                            color: Colors.grey.shade300,
                            borderRadius: BorderRadius.circular(5)),
                        child: Text(
                          'Interested clients',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Cairo',
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 100,
                      ),
                      Icon(
                        Icons.restore_outlined,
                        size: 25,
                        color: Colors.amberAccent,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'Name: ',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Cairo',
                        ),
                      ),
                      Text(
                        'Ibrahim Amin',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Cairo',
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'Phone: ',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Cairo',
                        ),
                      ),
                      Text(
                        '01022952483',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Cairo',
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
Widget buildDoneTask(context)=>   Container(
  margin: EdgeInsets.symmetric(horizontal: 10),
  width: double.infinity,
  decoration: BoxDecoration(
    boxShadow: [
      BoxShadow(
          color: Theme.of(context).shadowColor,
          // offset: Offset(0, 1),
          // spreadRadius: 4,
          // blurRadius: 5,
      )
    ],
    color: Theme.of(context).primaryColor,
    borderRadius: BorderRadius.circular(10),
  ),
  child: Row(
    children: [
      SizedBox(
        width: 10,
      ),
      Padding(
        padding: const EdgeInsets.only(top: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  'Type: ',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Cairo',
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                      color: Colors.greenAccent.shade200,
                      borderRadius: BorderRadius.circular(5)
                  ),
                  child: Text(
                    'Interested clients',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Cairo',
                    ),
                  ),
                ),
                SizedBox(width: 100,),
                Icon(Icons.verified_user_outlined,size: 25,color: Colors.greenAccent,),
              ],
            ),
            Row(
              children: [
                Text(
                  'Name: ',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Cairo',
                  ),
                ),
                Text(
                  'Ibrahim Amin',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Cairo',
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  'Phone: ',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Cairo',
                  ),
                ),
                Text(
                  '01022952483',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Cairo',
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Icon(Icons.alarm,color: Colors.blue,size: 20,),
                SizedBox(width: 5,),
                Text('duedate',style: TextStyle(color: Colors.red,fontSize: 14,fontWeight: FontWeight.w400,fontFamily: 'Cairo'),),
                SizedBox(width: 15,),
                Text('11/18/2021',style: TextStyle(color: Colors.red,fontSize: 14,fontWeight: FontWeight.w400,fontFamily: 'Cairo'),)
              ],
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    ],
  ),
);
Widget buildLateTask(context)=>   Container(
  margin: EdgeInsets.symmetric(horizontal: 10),
  width: double.infinity,
  decoration: BoxDecoration(
    boxShadow: [
      BoxShadow(
          color: Theme.of(context).shadowColor,
          // offset: Offset(0, 1),
          // spreadRadius: 4,
          // blurRadius: 5,
      )
    ],
    color: Theme.of(context).primaryColor,
    borderRadius: BorderRadius.circular(10),
  ),
  child: Row(
    children: [
      SizedBox(
        width: 10,
      ),
      Padding(
        padding: const EdgeInsets.only(top: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  'Type: ',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Cairo',
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                      color: Colors.redAccent,
                      borderRadius: BorderRadius.circular(5)
                  ),
                  child: Text(
                    'Interested clients',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Cairo',
                    ),
                  ),
                ),
                SizedBox(width: 100,),
                Icon(Icons.turned_in_not_rounded,size: 25,color: Colors.redAccent,),
              ],
            ),
            Row(
              children: [
                Text(
                  'Name: ',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Cairo',
                  ),
                ),
                Text(
                  'Ibrahim Amin',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Cairo',
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  'Phone: ',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Cairo',
                  ),
                ),
                Text(
                  '01022952483',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Cairo',
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Icon(Icons.alarm,color: Colors.blue,size: 20,),
                SizedBox(width: 5,),
                Text('duedate',style: TextStyle(color: Colors.grey.shade600,fontSize: 14,fontWeight: FontWeight.w400,fontFamily: 'Cairo'),),
                SizedBox(width: 15,),
                Text('11/18/2021',style: TextStyle(color: Colors.red.shade300,fontSize: 14,fontWeight: FontWeight.w400,fontFamily: 'Cairo'),)
              ],
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    ],
  ),
);

