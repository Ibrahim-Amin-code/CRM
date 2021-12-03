import 'package:crm_software/screens/home/home_component/home_component.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SeeAllScreen extends StatelessWidget {
  const SeeAllScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 15),
        child: ListView(
          physics: BouncingScrollPhysics(),
          shrinkWrap: true,
          primary: true,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Theme.of(context).backgroundColor,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.black26)
                  ),
                  child: Row(
                    children: [
                      InkWell(
                          onTap: ()=> Navigator.pop(context),
                          child: Icon(Icons.arrow_back,color: Colors.grey,size: 22,)),
                      SizedBox(width: 10,),
                      Text('America, California',style: Theme.of(context).textTheme.bodyText2)
                    ],
                  ),
                ),
                SizedBox(height: 15,),
                Text('  Projects',style:Theme.of(context).textTheme.bodyText2),
                SizedBox(height: 10,),
                ListView.separated(
                  shrinkWrap: true,
                    primary: false,
                    itemBuilder: (context,index) => buildSeeProjectCard(context),
                    separatorBuilder: (context,index)=>SizedBox(height: 10,),
                    itemCount: 5),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Widget buildSeeProjectCard(context) => Card(
  elevation:0,
  child: Container(
    decoration: BoxDecoration(
      boxShadow: [BoxShadow(

          color: Theme.of(context).shadowColor,
          // offset: Offset(0,3),
          // spreadRadius:4,
          // blurRadius: 5
      )],
      color: Theme.of(context).primaryColor,
      // border: Border.all(color: Colors.red),
      borderRadius: BorderRadius.circular(10),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 330,
          height: 150,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(topRight: Radius.circular(10),topLeft: Radius.circular(10),),
            image: DecorationImage(
                image: AssetImage('assets/images/living_room.jpg',),
                fit: BoxFit.cover),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(Icons.flag,color: Colors.deepOrange,size: 20,),
                  SizedBox(width: 5,),
                  Text('Apartment',style: TextStyle(color: Colors.deepOrange,fontSize: 15,fontFamily: 'Cairo',fontWeight: FontWeight.bold),),
                ],
              ),
              Text('Price 1,098 USD',style: TextStyle(color: Colors.black54,fontSize: 14,fontWeight: FontWeight.bold,fontFamily: 'Cairo'),),
              SizedBox(height: 5,),
              Row(
                children: [
                  CircleAvatar(
                      backgroundColor: Colors.grey.shade200,
                      radius: 15,
                      child: Icon(Icons.room_preferences_outlined,size: 20,color: Colors.black45)),
                  SizedBox(width:  5,),
                  Text('2',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.black54),),
                  SizedBox(width: 30,),
                  CircleAvatar(
                      backgroundColor: Colors.grey.shade200,
                      radius: 15,
                      child: Icon(Icons.bathtub_outlined,size: 20,color:  Colors.black45)),
                  SizedBox(width:  5,),
                  Text('1',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.black54),),
                  SizedBox(width: 30,),
                  CircleAvatar(
                      backgroundColor: Colors.grey.shade200,
                      radius: 15,
                      child: Icon(Icons.home_work_rounded,size: 20,color:  Colors.black45)),
                  SizedBox(width:  5,),
                  Text('1560 sqft',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.black54),),
                ],
              ),
            ],
          ),
        ),
        SizedBox(height: 10,),
      ],
    ),
  ),
);