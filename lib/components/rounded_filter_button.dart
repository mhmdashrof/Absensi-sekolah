import 'package:flutter/material.dart';
import 'package:absensi_sekolah/utilities/layout.dart';
import 'package:absensi_sekolah/utilities/constants.dart';

class RoundedFilterButton extends StatelessWidget {
  final Function press;

  const RoundedFilterButton({
    Key key,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Container(
        width: SizeConfig.blockHorizontal * 25,
        height: SizeConfig.blockVertical * 5,
        margin: EdgeInsets.symmetric(
          vertical: SizeConfig.blockVertical * 1,
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: FlatButton(
              onPressed: press,
              color: superLightColor,
              padding: EdgeInsets.symmetric(
                horizontal: SizeConfig.blockVertical * 1,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.filter_list,
                    color: primaryColor,
                  ),
                  Text(
                    "Filter",
                    style: TextStyle(
                      fontSize: SizeConfig.blockVertical * 2,
                      color: blackColor,
                      fontFamily: "Poppins-Medium",
                    ),
                  ),
                ],
              )),
        ));
  }
}
