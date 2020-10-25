import 'package:flutter/material.dart';
import 'package:absensi_sekolah/ui/sizing_information.dart';
import 'package:absensi_sekolah/utilities/ui.dart';

class BaseWidget extends StatelessWidget {
  final Widget Function(
      BuildContext context, SizingInformation sizingInformation) builder;
  const BaseWidget({Key key, this.builder}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);

    return LayoutBuilder(builder: (context, boxContraints) {
      var sizingInformation = SizingInformation(
          orientation: mediaQuery.orientation,
          deviceScreenType: getDeviceType(mediaQuery),
          screenSize: mediaQuery.size,
          localWidgetSize:
              Size(boxContraints.maxWidth, boxContraints.maxHeight));
      return builder(context, sizingInformation);
    });
  }
}
