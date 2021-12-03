import 'package:crm_software/screens/authentication/componenets/component.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'component/add_client_component.dart';

class AddClientScreen extends StatelessWidget {
  var nameController = TextEditingController();
  var phoneController = TextEditingController();
  var otherPhoneController = TextEditingController();
  var whatsAppController = TextEditingController();
  var emailAddressController = TextEditingController();
  var addressController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).backgroundColor,
        elevation: 0,
        title: Center(child: Text('Add New Client',style: Theme.of(context).textTheme.bodyText2,)),
        leading: InkWell(
            onTap: ()=> Navigator.pop(context),
            child: Icon(Icons.arrow_back_ios,color: Colors.grey,size: 20,)),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10),
        shrinkWrap: true,
        primary: true,
        children: [
          Text('Client Name *',style: Theme.of(context).textTheme.bodyText1,),
          SizedBox(height: 5,),
          buildAddClientFormField(
            context:  context,
            type: TextInputType.text,
            controller: nameController,
            hintText: 'Client Name',
          ),
          SizedBox(height: 10,),
          Text('Client Phone *',style: Theme.of(context).textTheme.bodyText1,),
          SizedBox(height: 5,),
          buildAddClientFormField(
            context:  context,
            type: TextInputType.phone,
            controller: phoneController,
            hintText: 'Client Phone',
          ),
          SizedBox(height: 10,),
          Text('Client Other Phone *',style: Theme.of(context).textTheme.bodyText1),
          SizedBox(height: 5,),
          buildAddClientFormField(
            context:  context,
            type: TextInputType.phone,
            controller: otherPhoneController,
            hintText: 'Client Other Phone',
          ),
          SizedBox(height: 10,),
          Text('Client WhatsApp Phone *',style: Theme.of(context).textTheme.bodyText1,),
          SizedBox(height: 5,),
          buildAddClientFormField(
            context:  context,
            type: TextInputType.phone,
            controller: whatsAppController,
            hintText: 'Client WhatsApp Phone',
          ),
          SizedBox(height: 10,),
          Text('Client Email *',style: Theme.of(context).textTheme.bodyText1,),
          SizedBox(height: 5,),
          buildAddClientFormField(
            context:  context,
            type: TextInputType.emailAddress,
            controller: emailAddressController,
            hintText: 'Client Email',
          ),
          SizedBox(height: 10,),
          Text('Address Email *',style: Theme.of(context).textTheme.bodyText1,),
          SizedBox(height: 5,),
          buildAddClientFormField(
            context:  context,
            type: TextInputType.text,
            controller: addressController,
            hintText: 'Client Address',
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
                    ),
                  ],
                ),
                child: Center(child: Text('Status',style: Theme.of(context).textTheme.bodyText1)),

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
                child: Center(child: Text('Referral',style: Theme.of(context).textTheme.bodyText1,)),

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
                  child: buildAddClientReferralDropDown(context: context),
                ),
              ),
            ],
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
                child: Center(child: Text('Class',style: Theme.of(context).textTheme.bodyText1,)),

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
                  child: buildAddClientClassDropDown(context: context),
                ),
              ),
            ],
          ),
          SizedBox(height: 10,),
          Text('Client Notes *',style: Theme.of(context).textTheme.bodyText1,),
          SizedBox(height: 5,),
          Container(
            height: 150,
            child: buildAddClientFormField(
              context:  context,
              type: TextInputType.text,
              controller: addressController,
              hintText: 'Client Notes',
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 120),
            height: 50,
            decoration: BoxDecoration(
              color: Colors.blue.shade400,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(child: Text('Save',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold,fontFamily: 'Cairo'),)),
          ),
          SizedBox(height: 20,),
        ],
      ),
    );
  }
}

