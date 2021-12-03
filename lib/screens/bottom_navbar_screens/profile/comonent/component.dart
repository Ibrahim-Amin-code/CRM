import 'package:crm_software/screens/authentication/componenets/component.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget buildEditProfileCard({
  context,
  required IconData icon,
  required String title,
  required String subTitle,
})=> Column(
  // crossAxisAlignment: CrossAxisAlignment.center,
  children: [
    SizedBox(
      height: 65,
      child: Row(
        children: [
          Icon(
            icon,
            size: 25,
            color: Colors.blueAccent,
          ),
          SizedBox(
            width: 5,
          ),
          Text(
            title,
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                fontFamily: 'Cairo'),
          ),
          Spacer(),
          Text(
            subTitle,
            style: Theme.of(context).textTheme.headline1,
          ),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.arrow_forward_ios,
            color: HexColor('#676767'),
            size: 20,
          ),
        ],
      ),
    ),
  ],
);

 buildBottomSheetEdit({
  @required context,
   required String mainText,
   required Widget textFormField,
}){
  return showModalBottomSheet(
      backgroundColor: Theme.of(context).bottomSheetTheme.backgroundColor,
      context: context,
      isDismissible: true,
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(15),
              topLeft: Radius.circular(15))),
      builder: (context) {
        return Padding(
          padding: MediaQuery.of(context).viewInsets,
          child: ListView(
            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
            primary: true,
            shrinkWrap: true,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 140),
                child: Row(
                  children: [
                    Text(
                      mainText,
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                    Spacer(),
                    Icon(
                      Icons.close,
                      size: 25,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              textFormField,
              SizedBox(
                height: 20,
              ),
              Center(
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: HexColor('#2972B7'))
                    // color: HexColor('#2972B7'),
                  ),
                  // height: 25,
                  width: 80,
                  child: TextButton(
                    onPressed: () {
                      // updateData(email: '',context: context,phone: '',name: textField,password: '',username: '');
                    },
                    child: Text(
                      'Save',
                      style: TextStyle(
                        fontFamily: 'Cairo',
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      });
}


Widget textFormField({
  @required context,
  required String hintText,
  required String labelText,
  required TextEditingController controller,
  required TextInputType type,
  int? maxLines,
  FormFieldValidator<String>? validator,
  required bool obscureText,
})=> TextFormField(
  validator: validator,
  controller: controller,
  keyboardType: type,
  maxLines: maxLines,
  obscureText:  obscureText,
  decoration: InputDecoration(
          floatingLabelBehavior: FloatingLabelBehavior.always,
          labelText: labelText,
          labelStyle: TextStyle(color: Colors.blueAccent, fontSize: 16, fontFamily: 'Cairo'),
          hintText: hintText,
          hintStyle: Theme.of(context).textTheme.headline1,
          enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: HexColor("#E6E6E6")),borderRadius: BorderRadius.circular(30)),
          focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: HexColor("#E6E6E6")),borderRadius: BorderRadius.circular(30)),
          border: OutlineInputBorder(borderSide: BorderSide(color: HexColor("#E6E6E6")),borderRadius: BorderRadius.circular(30)),
        ));



buildProfileCards({
  context,
  required double width,
  required double sizeBoxWidth,
  required double height,
  required Widget icon,
  Widget? iconCircleAvatar,
  String? title,
})=> Card(
  elevation: 2,
  shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
  color: Theme.of(context).backgroundColor,
  shadowColor: Theme.of(context).shadowColor,
  child: Container(
      width: width,
      height: height,
      padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          icon,
          SizedBox(width: sizeBoxWidth,),
          Column(
            // textDirection: TextDirection.rtl,
            crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(title!, style: Theme.of(context).textTheme.bodyText2,),
              // SizedBox(height: 5,),
              // Text('text',style: TextStyle(fontFamily: 'Cairo',fontWeight: FontWeight.w400,fontSize: 14,color: HexColor('#656F77')),),
            ],
          ),
          Spacer(),
          iconCircleAvatar!,
        ],
      )),
);


showAlertDialog({required title, context}){
  AlertDialog alert = AlertDialog(
    title: Column(
      children: [
        Align(
            alignment: Alignment.topLeft,
            child: InkWell(
                onTap: ()=>Navigator.pop(context),
                child: Icon(Icons.close_outlined))),
        SizedBox(height: 25,),
        Center(child: Text(title)),
      ],
    ),
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

