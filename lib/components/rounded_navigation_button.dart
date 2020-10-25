import 'package:flutter/material.dart';
import 'package:absensi_sekolah/utilities/constants.dart';

class RoundedNavigatonButton extends StatelessWidget {
  final IconData icon;
  final Function onTap;

  const RoundedNavigatonButton({
    Key key,
    this.icon,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(30),
      child: Container(
        // width: size.width * 0.13,
        // height: size.height * 0.06,
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          color: primaryColor,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Material(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(30),
          child: InkWell(
            onTap: onTap,
            splashColor: darkColor,
            borderRadius: BorderRadius.circular(30),
            child: Center(
                child: Icon(
              icon,
              size: 35,
              color: whiteColor,
            )),
          ),
        ),
      ),
    );
  }
}
