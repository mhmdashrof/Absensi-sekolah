import 'package:absensi_sekolah/components/rounded_navigation_button.dart';
import 'package:absensi_sekolah/utilities/layout.dart';
import 'package:flutter/material.dart';
import 'package:absensi_sekolah/utilities/constants.dart';
import 'package:absensi_sekolah/components/button_container.dart';

class RoundedSelectionButton extends StatelessWidget {
  final String desc;
  final String title;
  final IconData icon;
  final Function onTap;

  const RoundedSelectionButton({
    Key key,
    this.desc,
    this.icon,
    this.title,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return ButtonContainer(
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Container(
          margin: EdgeInsets.only(
            left: SizeConfig.blockHorizontal * 1.5,
          ),
          child: Icon(
            icon,
            size: SizeConfig.blockVertical * 4,
            color: primaryColor,
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title,
                style: TextStyle(
                  fontSize: SizeConfig.blockVertical * 2,
                  color: blackColor,
                  fontFamily: "Poppins-Medium",
                )),
            Text(desc,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: SizeConfig.blockVertical * 1.5,
                  color: grey2Color,
                  fontFamily: "Poppins-Regular",
                )),
          ],
        ),
        RoundedNavigatonButton(
          onTap: onTap,
          icon: Icons.navigate_next,
        )
      ]),
    );
  }
}
