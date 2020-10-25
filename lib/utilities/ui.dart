import 'package:flutter/cupertino.dart';
import 'package:absensi_sekolah/enums/device_screen_type.dart';

DeviceScreenType getDeviceType(MediaQueryData mediaQuery) {
  var orientation = mediaQuery.orientation;

  // fixed Device width (changes with orientation)
  double deviceWidth = 0;

  orientation == Orientation.landscape
      ? deviceWidth = mediaQuery.size.height
      : deviceWidth = mediaQuery.size.width;

  if (deviceWidth > 950) return DeviceScreenType.Desktop;
  if (deviceWidth > 600) return DeviceScreenType.Tablet;
  return DeviceScreenType.Mobile;
}
