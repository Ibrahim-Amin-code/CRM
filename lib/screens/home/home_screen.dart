import 'package:crm_software/screens/authentication/componenets/component.dart';
import 'package:crm_software/screens/see_all_screen/see_all_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home_component/home_component.dart';

class HomeScreen extends StatelessWidget {

  var searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      // appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: ListView(
          physics: BouncingScrollPhysics(),
          primary: true,
          shrinkWrap: true,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Container(
                    height: 50,
                    width: 250,
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.grey)
                    ),
                      child: Center(
                        child: buildTextFormField(
                          type: TextInputType.text,
                          controller: searchController,
                          prefixIcon: Icon(Icons.search,color: Colors.grey,size: 25,),
                          hintText: 'Search',
                        ),
                      ),
                    ),
                    SizedBox(
                      width:  15,
                    ),
                    Container(
                    height: 50,
                    width: 45,
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.grey)
                    ),
                      child: Icon(Icons.filter_alt_outlined,color: Colors.grey,),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text('Communities',
                  style: Theme.of(context).textTheme.headline2
                ),
                Text('Show Projects, Connect People, Support Our Program',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                 style: Theme.of(context).textTheme.headline1,
      ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.15,
                  child: ListView.separated(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                      itemBuilder: (context,index)=>buildCommunitiesCard(context),
                      separatorBuilder: (context,index) => SizedBox(width: 10, ),
                      itemCount: 4),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Text('Projects',style: Theme.of(context).textTheme.headline2),
                    Spacer(),
                    InkWell(
                      onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> SeeAllScreen())),
                      child: Container(
                        width: 60,
                        decoration: BoxDecoration(
                            color: Colors.grey[100],
                            borderRadius: BorderRadius.circular(5)
                        ),
                        child: Center(
                          child: Text('See all',style: TextStyle(
                            color: Colors.deepOrangeAccent,fontWeight: FontWeight.bold,
                            fontFamily: 'Cairo',fontSize: 16,
                          ),),
                        ),
                      ),
                    ),                  ],
                ),
                SizedBox(height: 5,),
                Container(
                  height: MediaQuery.of(context).size.height* 0.4,
                  child: ListView.separated(
                      shrinkWrap: true,
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context,index)=>buildProjectCard(context),
                      separatorBuilder: (context,index) => SizedBox(width: 10, ),
                      itemCount: 4),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Text('Unites',
                        style: Theme.of(context).textTheme.headline2),
                    Spacer(),
                    InkWell(
                      onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> SeeAllScreen() )),
                      child: Container(
                        width: 60,
                        decoration: BoxDecoration(
                          color: Colors.grey[100],
                          borderRadius: BorderRadius.circular(5)
                        ),
                        child: Center(
                          child: Text('See all',style: TextStyle(
                            color: Colors.deepOrangeAccent,fontWeight: FontWeight.bold,
                            fontFamily: 'Cairo',fontSize: 16,
                          ),),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  height: MediaQuery.of(context).size.height*0.17,
                  child: ListView.separated(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context,index)=>buildUnitesCard(context),
                      separatorBuilder: (context,index) => SizedBox(width: 10, ),
                      itemCount: 4),
                ),
                SizedBox(height: 20,),
              ],
            ),
          ],
        ),
      ),
    );
  }
  }













