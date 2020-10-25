import 'package:flutter/material.dart';
import 'package:absensi_sekolah/utilities/constants.dart';
import 'package:absensi_sekolah/components/text_field_container.dart';

class RoundedInputField extends StatelessWidget {
  final Color color;
  final IconData icon;
  final Color conColor;
  final String hintText;
  final Color hintColor;
  final ValueChanged<String> onChanged;

  const RoundedInputField(
      {Key key,
      this.icon,
      this.color,
      this.conColor,
      this.hintText,
      this.hintColor,
      this.onChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      conColor: conColor,
      child: TextField(
        cursorColor: color,
        onChanged: onChanged,
        style: TextStyle(color: blackColor),
        decoration: InputDecoration(
            icon: Icon(
              icon,
              color: color,
            ),
            fillColor: color,
            hintText: hintText,
            border: InputBorder.none,
            hintStyle: TextStyle(
                color: hintColor, fontFamily: "Poppins-Regular", fontSize: 14)),
      ),
    );
  }
}
