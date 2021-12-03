import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget buildDetailsProjectCard(context) => Container(
  // height: 300,
  // width: double.infinity,
  decoration: BoxDecoration(
    boxShadow: [BoxShadow(
        color: Theme.of(context).shadowColor,
        // offset: Offset(0,3),
        // spreadRadius:4,
        // blurRadius: 5
    )],
    color: Theme.of(context).primaryColor,
  ),
  // width: 200,
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Stack(
        children: [
          Container(
            height: 300,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/bed_room.jpg',),
                  fit: BoxFit.fill),
              borderRadius: BorderRadius.only(topRight: Radius.circular(5),topLeft: Radius.circular(5),),
            ),
          ),
          InkWell(
            onTap: ()=> Navigator.pop(context),
            child: Container(
              margin: EdgeInsets.only(left:20 ,top: 20),
              padding: EdgeInsets.only(left:6),
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Icon(Icons.arrow_back_ios,color: Colors.white70,size: 20,),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top:250,),
            child: Center(
              child: Container(
                width: 320,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [BoxShadow(
                      color: Theme.of(context).shadowColor,
                      // offset: Offset(0,1),
                      // spreadRadius:0,
                      // blurRadius: 5
                  )],
                ),
                child: Container(
                  padding: EdgeInsets.only(top: 20,left:25 ),
                  child: Row(
                    children: [
                      buildOptions(text: 'Map View',icon: Icons.my_location_outlined),
                      SizedBox(width: 20,),
                      buildOptions(icon: Icons.near_me_outlined,text: 'Near By'),
                      SizedBox(width: 20,),
                      buildOptions(text: 'Street View',icon: Icons.streetview_outlined),
                      SizedBox(width: 20,),
                      buildOptions(text: 'Stats',icon: Icons.support),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      SizedBox(height: 15,),
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
            Text('Price 1,098 USD', style: Theme.of(context).textTheme.bodyText1,),
            SizedBox(height: 5,),
            Row(
              children: [
                CircleAvatar(
                    backgroundColor: Colors.grey.shade200,
                    radius: 15,
                    child: Icon(Icons.room_preferences_outlined,size: 20,color: Colors.black45)),
                SizedBox(width:  5,),
                Text('2',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.grey),),
                SizedBox(width: 30,),
                CircleAvatar(
                    backgroundColor: Colors.grey.shade200,
                    radius: 15,
                    child: Icon(Icons.bathtub_outlined,size: 20,color: Colors.black45)),
                SizedBox(width:  5,),
                Text('1',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.grey),),
                SizedBox(width: 30,),
                CircleAvatar(
                    backgroundColor: Colors.grey.shade200,
                    radius: 15,
                    child: Icon(Icons.home_work_rounded,size: 20,color:  Colors.black45)),
                SizedBox(width:  5,),
                Text('1560 sqft',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.grey),),
              ],
            ),
            SizedBox(height: 20,),
            Text('Description',style: Theme.of(context).textTheme.bodyText2),
            SizedBox(height: 10,),
                Text(
                  'Are you looking for family friendly neighborhood with great neighbors, large lot with a creak that runs through the back Are you looking for family friendly neighborhood friendly neighborhood with great neighbors, large lot with a creak that runs through the back Are you looking for family friendly neighborhood friendly neighborhood with great neighbors, large lot with a creak that runs through the back Are you looking for family friendly neighborhood with great neighbors, large lot with a creak that runs through the back.',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ],
        ),
      ),
    ],
  ),
);


Widget buildOptions({
  required String text,
  required IconData icon,
})=> Column(
  crossAxisAlignment: CrossAxisAlignment.center,
  children: [
    Container(
      // margin:  EdgeInsets.only(left: 4),
        height: 45,
        width: 45,
        decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(5)
        ),
        child: Icon(icon,color: Colors.black45,size: 25,)),
    SizedBox(height: 5,),
    Text(text,style: TextStyle(
      color: Colors.black87,fontSize: 13,fontWeight: FontWeight.w400,fontFamily: 'Cairo',
    ),)
  ],
);

