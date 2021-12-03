import 'package:flutter/material.dart';

class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}


buildTextField({
  required double? double,
   String? hintText,
   String? labelText,
   required bool obscureText,
  // required String? initialValue,
  required TextInputType? type,
  // required ValueChanged<String>? onChanged,
  // required ValueChanged<String>? onFieldSubmitted,
  // required FormFieldSetter<String>? onSaved,
  // required GestureTapCallback? onTap,
  TextEditingController? controller,
  FormFieldValidator<String>? validator
}) {
  return Container(
    height: double,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),),
    child: Padding(
      padding: const EdgeInsets.only(right: 10),
      child: TextFormField(
        validator: validator,
        obscureText: obscureText,
        style: TextStyle(
          color: Colors.white
        ),
        controller: controller,
        decoration: InputDecoration(
          border: InputBorder.none,
          errorBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          focusedErrorBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          labelText: labelText,
          labelStyle: TextStyle(
            fontFamily: 'Cairo',
            fontSize: 14,
          ),
          hintText: hintText,
          hintStyle: TextStyle(
            color: Colors.white,
            fontFamily: 'Cairo',
            fontSize: 14,
          ),
        ),
        // onTap: onTap,
        // onFieldSubmitted: onFieldSubmitted,
        // onChanged: onChanged,
        // onSaved: onSaved,
        keyboardType: type,
        // initialValue: initialValue,
      ),
    ),
  );
}


Widget defaultButton({
  required double width,
   double? height,
   Color? background,
  bool isUpperCase = true,
  double radius = 0,
  required VoidCallback function,
  required String text,
}) =>
    MaterialButton(
      minWidth: width,
      height: height,
      color: background,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(radius),
      ),
      onPressed: function,
      child: Text(text,style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 20,
          fontFamily: "Cairo"
      ),),
    );
