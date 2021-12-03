import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        // elevation: 1,
        title: Center(
          child: Text('Search', style: Theme.of(context).textTheme.headline2,
        ),
      ),
    ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
        children: [
          Row(
            children: [
              Container(
                padding: EdgeInsets.only(top: 15),
                height: 100,
                width: 150,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Theme.of(context).shadowColor
                        // color: Colors.black12,
                        // offset: Offset(0, 1),
                        // spreadRadius: 4,
                        // blurRadius: 5,
                      ),
                    ],
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Column(
                  children: [
                    Icon(Icons.person_search_outlined,color: Colors.blueAccent,size: 40,),
                    SizedBox(
                      height: 5,
                    ),
                    Text('Clients Search',style: Theme.of(context).textTheme.bodyText1,),
                  ],
                ),
              ),
              Spacer(),
              Container(
                padding: EdgeInsets.only(top: 15),
                height: 100,
                width: 150,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Theme.of(context).shadowColor,
                        // offset: Offset(0, 1),
                        // spreadRadius: 4,
                        // blurRadius: 5,
                      ),
                    ],
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Column(
                  children: [
                    Icon(Icons.home_work_sharp,color: Colors.blueAccent,size: 40,),
                    SizedBox(
                      height: 5,
                    ),
                    Text('Projects Search',style:  Theme.of(context).textTheme.bodyText1,),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
