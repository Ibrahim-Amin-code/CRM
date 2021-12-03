import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FollowUpRecordingScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
            onTap: ()=> Navigator.pop(context),
            child: Icon(Icons.arrow_back_ios,color: Colors.black87,size: 20,)),
        elevation: 0,
        backgroundColor: Colors.white,
        title: Center(child: Text('FollowUp Record',style: TextStyle(color: Colors.black87,fontSize: 16,fontFamily: 'Cairo',fontWeight: FontWeight.bold,
        ),)),
      ),
      backgroundColor: Colors.white,
      body: Container(),
    );
  }
}
