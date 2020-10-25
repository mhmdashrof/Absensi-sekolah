import 'package:flutter/material.dart';
import 'package:absensi_sekolah/utilities/constants.dart';

class ListContainer extends StatelessWidget {
  final String title;
  final double allSize;
  final Widget filterButton;
  final Widget selectionButton;

  ListContainer(
      {Key key,
      this.title,
      this.allSize,
      this.filterButton,
      this.selectionButton})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final double newHeightSize = allSize * 8;
    final double newPadding = allSize / 2.5;

    return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
            width: double.infinity,
            height: size.height * 0 + newHeightSize,
            padding: EdgeInsets.only(
                left: newPadding, right: newPadding, top: newPadding),
            decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30))),
            child: SingleChildScrollView(
                child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      color: blackColor,
                      fontFamily: "Poppins-Medium",
                      fontSize: 20,
                    ),
                  ),
                  filterButton == null ? Container() : filterButton,
                ],
              ),
              SizedBox(
                height: size.height * 0.015,
              ),
              selectionButton == null ? Container() : selectionButton,
            ]))));
  }
}
