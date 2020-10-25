import 'package:flutter/material.dart';
import 'package:absensi_sekolah/utilities/layout.dart';
import 'package:absensi_sekolah/utilities/constants.dart';

class ButtonContainer extends StatelessWidget {
  final Widget child;

  const ButtonContainer({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      width: SizeConfig.screenWidth * 1,
      margin: EdgeInsets.symmetric(vertical: 5),
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      decoration: BoxDecoration(
          color: greyColor, borderRadius: BorderRadius.circular(30)),
      child: child,
    );
  }
}
