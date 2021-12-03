import 'package:crm_software/screens/details_screen/details_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget buildTextFormField({
  required TextEditingController controller,
  required TextInputType? type,
  String? hintText,
  Icon? prefixIcon,
  Icon? suffixIcon,
}) =>
    TextFormField(
      cursorColor: Colors.black,
      controller: controller,
      decoration: InputDecoration(
        border: InputBorder.none,
        errorBorder: InputBorder.none,
        focusedBorder: InputBorder.none,
        focusedErrorBorder: InputBorder.none,
        enabledBorder: InputBorder.none,
        hintText: hintText,
        hintStyle: TextStyle(
          color: Colors.grey,
          fontSize: 16,
          fontFamily: 'Cairo',
          fontWeight: FontWeight.bold,
        ),
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
      ),
      keyboardType: type,
    );

Widget buildCommunitiesCard(context,) => InkWell(
  onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailsScreen())),
  child:   Stack(
        children: [
          Container(
            height: 100,
            width: 220,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/house_04.jpg'),
                  fit: BoxFit.cover),
              border: Border.all(color: Colors.transparent),
              borderRadius: BorderRadius.circular(10),
            ),
            // child: ,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Container(
              height: 27,
              width: 220,
              decoration: BoxDecoration(
                color: Colors.white24,
                border: Border.all(color: Colors.transparent),
                // borderRadius: BorderRadius.circular(5)
              ),
              child: Center(
                child: Text(
                  'America, Los Angels',
                  style: TextStyle(
                      color: Colors.deepOrange.shade300,
                      fontSize: 15,
                      fontFamily: 'Cairo',
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          // SizedBox(height: 20,),
          Padding(
              padding: const EdgeInsets.only(top: 55, left: 60),
              child: Container(
                height: 35,
                width: 100,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.transparent),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Explore',
                      style: TextStyle(
                        color: Colors.black45,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Cairo',
                        fontSize: 17,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(
                      Icons.arrow_forward,
                      size: 20,
                      color: Colors.black45,
                    )
                  ],
                ),
              )),
        ],
      ),
);

Widget buildProjectCard(context) => InkWell(
  onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailsScreen())),
  child:   Card(
        elevation: 0,
        child: Container(
          width: 250,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  // color: Colors.grey.shade50,
                  // offset: Offset(0, 3),
                  // spreadRadius: 4,
                  // blurRadius: 5,
                color: Theme.of(context).shadowColor
              )
            ],
            color: Colors.black12,
            // border: Border.all(color: Colors.red),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 250,
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(10),
                    topLeft: Radius.circular(10),
                  ),
                  image: DecorationImage(
                      image: AssetImage(
                        'assets/images/living_room.jpg',
                      ),
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
                        Icon(
                          Icons.flag,
                          color: Colors.deepOrange,
                          size: 20,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Apartment',
                          style: TextStyle(
                              color: Colors.deepOrange,
                              fontSize: 15,
                              fontFamily: 'Cairo',
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Text(
                      'Price 1,098 USD',
                      style: TextStyle(
                          color: Colors.black54,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Cairo'),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        CircleAvatar(
                            backgroundColor: Colors.grey.shade200,
                            radius: 13,
                            child: Icon(Icons.room_preferences_outlined,
                                size: 20, color: Colors.black45)),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          '2',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: Colors.black54),
                        ),
                        SizedBox(
                          width: 28,
                        ),
                        CircleAvatar(
                            backgroundColor: Colors.grey.shade200,
                            radius: 13,
                            child: Icon(Icons.bathtub_outlined,
                                size: 20, color: Colors.black45)),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          '1',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: Colors.black54),
                        ),
                        SizedBox(
                          width: 28,
                        ),
                        CircleAvatar(
                            backgroundColor: Colors.grey.shade200,
                            radius: 13,
                            child: Icon(Icons.home_work_rounded,
                                size: 20, color: Colors.black45)),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          '1560 sqft',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: Colors.black54),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
);

Widget buildUnitesCard(context) => InkWell(
  onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailsScreen())),
  child:   Stack(
        children: [
          Container(
            height: 100,
            width: 150,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/house_08.jpg'),
                  fit: BoxFit.cover),
              border: Border.all(color: Colors.transparent),
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    // color: Colors.grey.shade200,
                    // offset: Offset(0, 1),
                    // spreadRadius: 1,
                    // blurRadius: 3,
                  color: Theme.of(context).shadowColor
                )
              ],
              // shape:
            ),
            // child: ,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 75),
            child: Container(
              height: 25,
              width: 150,
              decoration: BoxDecoration(
                color: Colors.white54,
                border: Border.all(color: Colors.transparent),
                // borderRadius: BorderRadius.circular(5)
              ),
              child: Center(
                child: Text(
                  'Unite Name',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontFamily: 'Cairo',
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ],
      ),
);
