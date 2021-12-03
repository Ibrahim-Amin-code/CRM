import 'package:crm_software/screens/authentication/componenets/component.dart';
import 'package:crm_software/screens/bottom_navbar_screens/component/component.dart';
import 'package:crm_software/screens/home/home_component/home_component.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'component/component.dart';

class ClientsManagement extends StatelessWidget {

  var searchController = TextEditingController();
  @override
  Widget build(BuildContext context,) {
    return Scaffold(
      // backgroundColor: Colors.red,
      appBar: AppBar(
        // backgroundColor: Colors.white,
        elevation: 0,
        title: Center(child: Text('My clients',)),
          // style: TextStyle(fontFamily: 'Cairo',fontWeight: FontWeight.bold,fontSize: 16,color: HexColor('#191D21')),)),
        leading: InkWell(
          onTap: ()=>Navigator.pop(context),
            child: Icon(Icons.arrow_back_ios,size: 20,)),
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        shrinkWrap: true,
        primary: true,
        children: [
          SizedBox(height: 10,),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            height: 50,
            // width: 230,
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
          SizedBox(height: 15,),
          Container(
            // height: MediaQuery.of(context).size.height * 2.1,
            child: ListView.separated(
                  shrinkWrap: true,
                  primary: false,
                  itemBuilder: (context, index) => InkWell(
                    onTap: ()=>showOptionsDealAlertDialog(context: context),
                    child: buildClientCard(
                      context: context,
                          status: 'Cold',
                          referral: 'Social media',
                          email: 'ibrahimamin081@gmail.com',
                          name: 'Ibrahim Amin',
                          clientClass: 'A',
                          clientStateColor: Colors.amberAccent,
                          phoneNum: '01022952483',
                          whatsAppPhoneNum: '01022953483',
                        ),
                  ),
                  separatorBuilder: (context, index) => SizedBox(height: 15,),
                  itemCount: 10),
          ),
          SizedBox(height: 10,),
          ],
        )
    );
  }
}
