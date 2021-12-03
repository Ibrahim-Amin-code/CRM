import 'package:flutter/material.dart';


// build FormField in add client screen
Widget buildAddClientFormField({
  required TextEditingController controller,
  required TextInputType? type,
  String? hintText,
  context
}) => Container(
  padding: EdgeInsets.symmetric(horizontal: 10),
  margin: EdgeInsets.symmetric(horizontal: 10),
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(20),
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

Widget buildAddClientStatusDropDown({context})=> DropdownButtonHideUnderline(
  child: DropdownButton<String>(
    items: <String>['Choose Status','A', 'B', 'C', 'D',].map((String value) {
      return DropdownMenuItem<String>(
        value: value,
        child: Text(value),
      );
    }).toList(),
    elevation: 0,
    value: 'Choose Status',
    menuMaxHeight: 150,
    style: Theme.of(context).textTheme.bodyText1,
    dropdownColor: Colors.grey.shade400,
    icon: Icon(Icons.arrow_drop_down_circle_outlined,color: Colors.black54,size: 20,),
    onChanged: (value) {
      value = value;
    },
  ),
);
Widget buildAddClientReferralDropDown({context})=> DropdownButtonHideUnderline(
  child: DropdownButton<String>(
    items: <String>['Choose Referral','A', 'B', 'C', 'D',].map((String value) {
      return DropdownMenuItem<String>(
        value: value,
        child: Text(value),
      );
    }).toList(),
    elevation: 0,
    value: 'Choose Referral',
    menuMaxHeight: 150,
    style:Theme.of(context).textTheme.bodyText1,
    dropdownColor: Colors.grey.shade400,
    icon: Icon(Icons.arrow_drop_down_circle_outlined,color: Colors.black54,size: 20,),
    onChanged: (value) {
      value = value;
    },
  ),
);
Widget buildAddClientClassDropDown({context})=> DropdownButtonHideUnderline(
  child: DropdownButton<String>(
    items: <String>['Choose Class','A', 'B', 'C', 'D',].map((String value) {
      return DropdownMenuItem<String>(
        value: value,
        child: Text(value),
      );
    }).toList(),
    elevation: 0,
    value: 'Choose Class',
    menuMaxHeight: 150,
    style: Theme.of(context).textTheme.bodyText1,
    dropdownColor: Colors.grey.shade400,
    icon: Icon(Icons.arrow_drop_down_circle_outlined,color: Colors.black54,size: 20,),
    onChanged: (value) {
      value = value;
    },
  ),
);
