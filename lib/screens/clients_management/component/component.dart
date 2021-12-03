
import 'package:crm_software/screens/authentication/componenets/component.dart';
import 'package:crm_software/screens/clients_management/client_details/client_details_screen.dart';
import 'package:crm_software/screens/followUp/followUp_recording_screen.dart';
import 'package:crm_software/screens/followUp/new_followUp_screen.dart';
import 'package:crm_software/screens/tasks/tasks_component/tasks_component.dart';
import 'package:flutter/material.dart';

// build FormField in clients management screen
Widget buildClientCard({
  context,
  required String clientClass,
  required Color clientStateColor,
  required String name,
  required String phoneNum,
  required String whatsAppPhoneNum,
  required String email,
  required String referral,
  required String status,

})=> Container(
  margin: EdgeInsets.symmetric(horizontal: 10),
  width: double.infinity,
  decoration: BoxDecoration(
    boxShadow: [BoxShadow(color: Theme.of(context).shadowColor)],
    color: Theme.of(context).backgroundColor,
    borderRadius: BorderRadius.circular(5),
  ),
  child: Row(
    children: [
      Container(
        margin: EdgeInsets.only(left: 10),
        height: 110,
        width: 50,
        decoration: BoxDecoration(
          color: clientStateColor,
          borderRadius: BorderRadius.all(Radius.circular(7)),
        ),
        child: Center(child: Text(clientClass,style: TextStyle(color: Colors.white,fontFamily: 'Cairo',fontWeight: FontWeight.bold,fontSize: 35,),
        )),
      ),
      SizedBox(width: 10,),
      Padding(
        padding: const EdgeInsets.only(top: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text('Name: ',
                  style: Theme.of(context).textTheme.bodyText1
                  ,),
                Text(name,style: Theme.of(context).textTheme.bodyText1
                ),
              ],
            ),
            Row(
              children: [
                Text('Phone: ',style: Theme.of(context).textTheme.bodyText1,),
                Text(phoneNum,style:  Theme.of(context).textTheme.bodyText1,),
              ],
            ),
            Row(
              children: [
                Text('Whats app: ',style:  Theme.of(context).textTheme.bodyText1,),
                Text(whatsAppPhoneNum,style:  Theme.of(context).textTheme.bodyText1,),
              ],
            ),
            Row(
              children: [
                Text('Email: ',style:  Theme.of(context).textTheme.bodyText1,),
                Text(email,style:  Theme.of(context).textTheme.bodyText1,),
              ],
            ),
            Row(
              children: [
                Container(
                    decoration: BoxDecoration(
                        color:HexColor('#8AB6D6'),
                        borderRadius: BorderRadius.circular(5)
                    ),
                    padding: EdgeInsets.only(left: 5,right: 5),
                    child: Text(referral,style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,fontFamily: 'Cairo',),)),
                SizedBox(width: 30,),
                Container(
                    decoration: BoxDecoration(
                        color:HexColor('#DDEFFF'),
                        borderRadius: BorderRadius.circular(5)
                    ),
                    padding: EdgeInsets.only(left: 5,right: 5),
                    child: Text(status,style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,fontFamily: 'Cairo',),)),
              ],
            ),
            SizedBox(height: 10,),
          ],
        ),
      ),
    ],
  ),
);


// build FormField in client details screen
Widget buildClientDetailsFormField({
  required TextEditingController controller,
  required TextInputType? type,
  Color? color,
  String? hintText,
  context,

}) => Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      margin: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color:(color == null)? Colors.black12 : color = color,
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).shadowColor,
              // offset: Offset(0, 1),
              // spreadRadius: 4,
              // blurRadius: 5,
          ),
        ],
      ),
      child: TextFormField(
        style: Theme.of(context).textTheme.headline1,
        cursorColor: Colors.grey,
        controller: controller,
        decoration: InputDecoration(
          border: InputBorder.none,
          errorBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          focusedErrorBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          hintText: hintText,
          hintStyle: Theme.of(context).textTheme.headline1,
          // prefixIcon: prefixIcon,
          // suffixIcon: suffixIcon,
        ),
        keyboardType: type,
      ),
    );


showOptionsDealAlertDialog({
  context,
  // required String path,
  // required String title,
  // required String id,
  // required String clientName,
  // required String contactingDateTime,
  // required String clientState,
  // required String clientReferral,
  // required String clientPhoneNum,
  // required String clientOtherPhoneNum,
  // required String clientWhatsAppPhoneNum,
  // required String clientJobTitle,
  // required String clientAdderss,
  // required String contactingTime,
  // required String reviewOfferResponse,
  // required String notes,
  // required String clientEmail,
}) {Widget okButton = Container(
    width: 310,
    height: 350,
    padding: EdgeInsets.only(top: 25),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(20)),
      color: Colors.white,
      // shape: BoxShape.circle
    ),
    child: Center(
      child: Column(
        children: [
          InkWell(
              onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=>NewFollowUp())),
              // onTap: () => Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //         builder: (context) => AddFollowUp(
              //               clientId: id,
              //               referral: clientReferral,
              //               email: clientEmail,
              //               name: clientName,
              //               phone: clientPhoneNum,
              //               state: clientState,
              //             ))),
              child: buildOptions(
                  title: 'New Follow Up', color: HexColor('#29B784'))
          ),
          SizedBox(height: 10,),
          InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> ClientDetailsScreen()));
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //         builder: (context) => UpdateClintData(
                //           clientId: id,
                //           clientEmail: clientEmail,
                //           clientAdderss: clientAdderss,
                //           clientJobTitle: clientJobTitle,
                //           clientName: clientName,
                //           clientOtherPhoneNum: clientOtherPhoneNum,
                //           clientPhoneNum: clientPhoneNum,
                //           clientWhatsAppPhoneNum: clientWhatsAppPhoneNum,
                //         )));
                // LeadInformationBottomSheet(context);
              },
              child: buildOptions(
                  title: 'Client Details', color: HexColor('#0085E3'))),
          SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: ()=> Navigator.push(context, MaterialPageRoute(builder:(context)=>FollowUpRecordingScreen())),
            //     CustomerManageEditing(
            //       contactingDateTime: contactingDateTime,
            //       contactingTime:contactingTime ,
            //       notes: notes,
            //       reviewOfferResponse:reviewOfferResponse,
            //       phone: clientPhoneNum,
            //       state: clientState,
            //       name:clientName,
            //       email:clientEmail,
            //       referral:clientReferral,
            //       clientId:id,
            //     ))),
            child: buildOptions(
                title: 'Follow Up Record', color: HexColor('#2972B7')),
          ),
          SizedBox(
            height: 10,
          ),
          InkWell(
              onTap: ()=> buildMyTasksBottomSheet(context: context,mainText: 'My Tasks'),
              // onTap: () => Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //         builder: (context) => TasksScreenInDrawer())),
              child: buildOptions(title: 'Tasks', color: HexColor('#FFAE48'))
          ),
          SizedBox(
            height: 10,
          ),
          InkWell(
              onTap: () => showDealAlertDialog(
                  context: context,
                  title:
                  'Are you sure of completing the contract and transferring the client to the contracting clients?',
                  press: () {},
                  path: 'assets/images/icons8-handshake-100 1.png'),
              child: buildOptions(
                  title: 'Done Deal', color: HexColor('#008000'))),
          SizedBox(
            height: 10,
          ),
          InkWell(
              onTap: () => showDealAlertDialog(
                  path: 'assets/images/icons8-trash-200 1.png',
                  press: () {},
                  title:
                  'Are you sure about losing the contract and transferring the client to the archive?',
                  context: context),
              child: buildOptions(
                  title: 'Lose Deal', color: HexColor('#FF0000'))),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    ),
  );
  AlertDialog alert = AlertDialog(
    actions: [okButton],
  );

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}


showDealAlertDialog({context,required VoidCallback press,required String path,required String title}) {
  Widget okButton = Column(
    children: [
      Container(
        padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
        width: 300,
        height: 150,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Image.asset(
          path,
          width: 150,
          height: 150,
          fit: BoxFit.contain,
        ),
      ),
      Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: 'Cairo',
                  fontSize: 14,
                  color: Colors.black,
                  fontWeight: FontWeight.w600),
            ),
          )),
      SizedBox(
        height: 20,
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Row(
          textDirection: TextDirection.rtl,
          children: [
            Container(
                width: 90,
                height: 35,
                decoration: BoxDecoration(
                    color: HexColor('#E6E6E6'),
                    borderRadius: BorderRadius.circular(5)),
                child: Center(
                    child: InkWell(
                        onTap: press,
                        child: Text(
                          'Confirm',
                          style: TextStyle(
                              fontFamily: 'Cairo',
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        )))),
            Spacer(),
            Container(
                width: 90,
                height: 35,
                decoration: BoxDecoration(
                    color: HexColor('#C50B0B'),
                    borderRadius: BorderRadius.circular(5)),
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Center(
                      child: Text(
                        'Cancel',
                        style: TextStyle(
                            fontFamily: 'Cairo',
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      )),
                )),
          ],
        ),
      ),
    ],
  );

  AlertDialog alert = AlertDialog(
    actions: [okButton],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}



Widget buildOptions({
  required String title,
  required Color color,
})=> Container(
  width: 200,
  height: 40,
  decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(5),
      color: color
  ),
  child: Center(
    child: Text(title,style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 14,
        fontFamily: 'Cairo'
    ),),
  ),
);
