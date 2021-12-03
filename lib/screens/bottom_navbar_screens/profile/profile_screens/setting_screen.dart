import 'package:crm_software/screens/layout/cubit/cubit.dart';
import 'package:flutter/material.dart';

class SettingScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        title: Center(
          child: Text('Setting',
          style: Theme.of(context).textTheme.bodyText2,
          ),
        ),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0,
        leading: InkWell(
            onTap: ()=> Navigator.pop(context),
            child: Icon(Icons.arrow_back_ios,color: Colors.grey,size: 20,)),
      ),
      body: ListView(
         physics: BouncingScrollPhysics(),
        shrinkWrap: true,
        primary: true,
        padding: EdgeInsets.symmetric(horizontal: 50),
        children: [
          SizedBox(height: 20,),
          Row(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 5),
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(5)
                ),
                child: Text('Theme Mode', style: TextStyle(fontFamily: 'Cairo',fontWeight: FontWeight.bold,color: Colors.black87),),
              ),
              Spacer(),
              IconButton(
                  onPressed: (){
                    AppCubit.get(context).changeAppMode();
                  },
                  icon:Icon(Icons.brightness_4_outlined,color: Colors.grey,size: 30,))
              ],
          ),
          SizedBox(height: 20,),
          Row(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 5),
                decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(5)
                ),
                child: Text('language', style: TextStyle(fontFamily: 'Cairo',fontWeight: FontWeight.bold,color: Colors.black87),),
              ),
              Spacer(),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 5),
                decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(5)
                ),
                child: Text('en', style: TextStyle(fontFamily: 'Cairo',fontWeight: FontWeight.bold,color: Colors.black87),),
              ),
            ],
          ),
          SizedBox(height: 20,),
          Text('About Us', style: Theme.of(context).textTheme.bodyText2,),
          SizedBox(height: 5,),
          Container(
            height: 100,
            child: Text(
              'A well-built infographic might help visitors remember about you or your business better than any amount of words. So if you think it works better for your brand or business, skip the lengthy description, or add a well-designed graphic that can help your visitors understand your concept. Or maybe you would like to add a cool video about how your business was created, or about your story and let it speak for itself.',
              maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey.shade500,
                  fontFamily: 'Cairo',
                  fontWeight: FontWeight.w500,
                ),
            ),
          ),
          SizedBox(height: 10,),
          Text('Support Center', style: Theme.of(context).textTheme.bodyText2,),
          SizedBox(height: 5,),
          Container(
            height: 100,
            child: Text(
              'A well-built infographic might help visitors remember about you or your business better than any amount of words. So if you think it works better for your brand or business, skip the lengthy description, or add a well-designed graphic that can help your visitors understand your concept. Or maybe you would like to add a cool video about how your business was created, or about your story and let it speak for itself.',
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey.shade500,
                fontFamily: 'Cairo',
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
