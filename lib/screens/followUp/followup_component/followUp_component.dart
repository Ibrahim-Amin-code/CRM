import 'package:crm_software/screens/authentication/componenets/component.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


Widget buildNewFollowUPFormField({
  required String hintText,
  context,
  required String labelText,
  required TextEditingController controller,
  required TextInputType type,
  int? maxLines,
  FormFieldValidator<String>? validator,
  required bool obscureText,
})=> TextFormField(
    style: Theme.of(context).textTheme.bodyText1,
    validator: validator,
    controller: controller,
    keyboardType: type,
    maxLines: maxLines,
    obscureText:  obscureText,
    decoration: InputDecoration(
      floatingLabelBehavior: FloatingLabelBehavior.always,
      labelText: labelText,
      labelStyle: TextStyle(color: Colors.blue, fontSize: 16, fontFamily: 'Cairo'),
      hintText: hintText,
      hintStyle:  Theme.of(context).textTheme.bodyText1,
      enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: HexColor("#E6E6E6")),borderRadius: BorderRadius.circular(30)),
      focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: HexColor("#E6E6E6")),borderRadius: BorderRadius.circular(30)),
      border: OutlineInputBorder(borderSide: BorderSide(color: HexColor("#E6E6E6")),borderRadius: BorderRadius.circular(30)),
    ));




// Widget buildNewFollowUPFormField({
//   required TextEditingController controller,
//   required TextInputType? type,
//   // Color? color,
//   String? hintText,
//   String? labelText,
//   int? maxLines,
//   FormFieldValidator<String>? validator,
// }) => Container(
//   padding: EdgeInsets.symmetric(horizontal: 10),
//   margin: EdgeInsets.symmetric(horizontal: 10),
//   decoration: BoxDecoration(
//     border: Border.all(color: Colors.grey.shade200),
//     borderRadius: BorderRadius.circular(20),
//     color:Colors.white70,
//   ),
//   child:  TextFormField(
//       validator: validator,
//       controller: controller,
//       keyboardType: type,
//       maxLines: maxLines,
//       // obscureText:  obscureText,
//       decoration: InputDecoration(
//         floatingLabelBehavior: FloatingLabelBehavior.always,
//         labelText: labelText,
//         labelStyle: TextStyle(color: Colors.white, fontSize: 16, fontFamily: 'Cairo'),
//         hintText: hintText,
//         hintStyle: TextStyle(color: Colors.black54, fontSize: 15, fontFamily: 'Cairo'),
//         enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: HexColor("#E6E6E6")),borderRadius: BorderRadius.circular(30)),
//         focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: HexColor("#E6E6E6")),borderRadius: BorderRadius.circular(30)),
//         border: OutlineInputBorder(borderSide: BorderSide(color: HexColor("#E6E6E6")),borderRadius: BorderRadius.circular(30)),
//       )),
// );
