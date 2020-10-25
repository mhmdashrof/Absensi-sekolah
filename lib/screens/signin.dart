import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:absensi_sekolah/utilities/layout.dart';
import 'package:absensi_sekolah/screens/dashboard.dart';
import 'package:absensi_sekolah/screens/school_list.dart';
import 'package:absensi_sekolah/utilities/constants.dart';
import 'package:absensi_sekolah/components/or_divider.dart';
import 'package:absensi_sekolah/components/social_icon.dart';
import 'package:absensi_sekolah/components/rounded_button_v2.dart';
import 'package:absensi_sekolah/components/rounded_input_field.dart';
import 'package:absensi_sekolah/components/rounded_password_field.dart';
import 'package:absensi_sekolah/components/rounded_navigation_button.dart';

class Signin extends StatefulWidget {
  @override
  _SigninState createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        height: SizeConfig.screenHeight,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: SizeConfig.blockVertical * 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RoundedNavigatonButton(
                    onTap: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) {
                        return SchoolList();
                      }));
                    },
                    icon: Icons.navigate_before,
                  ),
                  SizedBox(width: SizeConfig.blockHorizontal * 4),
                  Text(
                    "Masuk akun",
                    style: TextStyle(
                      fontSize: 24,
                      color: blackColor,
                      fontFamily: "Poppins-SemiBold",
                    ),
                  ),
                ],
              ),
              SizedBox(height: SizeConfig.blockVertical * 5),
              SvgPicture.asset(
                "assets/images/secure_data.svg",
                height: SizeConfig.blockVertical * 30,
              ),
              SizedBox(height: SizeConfig.blockVertical * 5),
              RoundedInputField(
                color: primaryColor,
                hintColor: lightColor,
                onChanged: (value) {},
                conColor: superLightColor,
                hintText: "Masukkan email kamu!",
                icon: Icons.supervised_user_circle,
              ),
              RoundedPasswordField(
                conColor: superLightColor,
                onChanged: (value) {},
              ),
              SizedBox(height: SizeConfig.blockVertical * 2),
              RoundedButtonV2(
                onPress: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) {
                    return Dashboard();
                  }));
                },
                text: "Masuk",
              ),
              OrDivider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SocialIcon(
                    icon: "assets/icons/google.svg",
                    press: () {},
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
