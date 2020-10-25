import 'package:flutter/material.dart';
import 'package:absensi_sekolah/utilities/constants.dart';
import 'package:absensi_sekolah/components/text_field_container.dart';

class RoundedPasswordField extends StatelessWidget {
  final Color conColor;
  final ValueChanged<String> onChanged;

  const RoundedPasswordField({Key key, this.conColor, this.onChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      conColor: conColor,
      child: TextField(
        obscureText: true,
        onChanged: onChanged,
        cursorColor: primaryColor,
        style: TextStyle(color: blackColor),
        decoration: InputDecoration(
            icon: Icon(
              Icons.lock,
              color: primaryColor,
            ),
            suffixIcon: Icon(
              Icons.visibility,
              color: primaryColor,
            ),
            fillColor: primaryColor,
            hintText: "Masukkan password kamu!",
            hintStyle: TextStyle(
                color: lightColor, fontFamily: "Poppins-Regular", fontSize: 14),
            border: InputBorder.none),
      ),
    );
  }
}
