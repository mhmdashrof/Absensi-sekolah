import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:absensi_sekolah/ui/base_widget.dart';
import 'package:absensi_sekolah/utilities/layout.dart';
import 'package:absensi_sekolah/utilities/constants.dart';
import 'package:absensi_sekolah/screens/school_list.dart';
import 'package:absensi_sekolah/components/rounded_button_v2.dart';

class Intro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return BaseWidget(builder: (context, sizingInformation) {
      return Scaffold(
        body: Container(
          height: SizeConfig.screenHeight,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "Absensi Siswa",
                style: TextStyle(
                  fontSize: SizeConfig.blockVertical * 4,
                  color: primaryColor,
                  fontFamily: "Poppins-Bold",
                ),
              ),
              SizedBox(
                height: SizeConfig.blockVertical * 1,
              ),
              Center(
                child: SvgPicture.asset(
                  "assets/images/data.svg",
                  width: SizeConfig.screenWidth * 0.80,
                ),
              ),
              SizedBox(
                height: SizeConfig.blockVertical * 1,
              ),
              Text(
                "Ayo kelola kehadiran kamu!",
                style: TextStyle(
                  fontSize: SizeConfig.blockVertical * 2.8,
                  color: blackColor,
                  fontFamily: "Poppins-SemiBold",
                ),
              ),
              Text(
                "Lebih mudah dan efesien mengelola \nkehadiran kamu di sekolah.",
                style: TextStyle(
                  fontSize: SizeConfig.blockVertical * 2,
                  color: blackColor,
                  fontFamily: "Poppins-Regular",
                ),
                textAlign: TextAlign.center,
              ),
              RoundedButtonV2(
                onPress: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) {
                    return SchoolList();
                  }));
                },
                text: "Lanjut",
              ),
              Column(
                children: [
                  Text(
                    "Dengan menggunakan aplikasi ini, kamu",
                    style: TextStyle(
                      fontSize: SizeConfig.blockVertical * 1.5,
                      color: blackColor,
                      fontFamily: "Poppins-Regular",
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "menyetujui ",
                          style: TextStyle(
                            fontSize: SizeConfig.blockVertical * 1.5,
                            color: blackColor,
                            fontFamily: "Poppins-Regular",
                          ),
                        ),
                        Text(
                          "Ketentuan Layanan ",
                          style: TextStyle(
                            fontSize: SizeConfig.blockVertical * 1.5,
                            color: darkColor,
                            fontFamily: "Poppins-Regular",
                          ),
                        ),
                        Text(
                          "dan ",
                          style: TextStyle(
                            fontSize: SizeConfig.blockVertical * 1.5,
                            color: blackColor,
                            fontFamily: "Poppins-Regular",
                          ),
                        ),
                        Text(
                          "Ketentuan Privasi.",
                          style: TextStyle(
                            fontSize: SizeConfig.blockVertical * 1.5,
                            color: darkColor,
                            fontFamily: "Poppins-Regular",
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    });
  }
}
