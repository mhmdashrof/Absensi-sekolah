import 'package:flutter/material.dart';
import 'package:absensi_sekolah/ui/base_widget.dart';
import 'package:absensi_sekolah/utilities/layout.dart';

class Example extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return BaseWidget(builder: (context, sizingInformation) {
      return Scaffold(
          body: Center(
              child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: SizeConfig.blockHorizontal * 30,
            width: SizeConfig.blockVertical * 15,
            color: Colors.blue,
            child: Text(sizingInformation.toString()),
          ),
          Text(
            sizingInformation.toString(),
            style: TextStyle(
              fontSize: SizeConfig.blockHorizontal * 3,
            ),
          ),
        ],
      )));
    });
  }
}
