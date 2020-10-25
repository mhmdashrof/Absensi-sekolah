import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:absensi_sekolah/utilities/layout.dart';
import 'package:absensi_sekolah/utilities/constants.dart';
import 'package:absensi_sekolah/screens/signin.dart';
import 'package:absensi_sekolah/components/rounded_input_field.dart';
import 'package:absensi_sekolah/components/rounded_filter_button.dart';
import 'package:absensi_sekolah/components/rounded_selection_button.dart';

class SchoolList extends StatefulWidget {
  @override
  _SchoolListState createState() => _SchoolListState();
}

class _SchoolListState extends State<SchoolList> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      backgroundColor: lightColor,
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            child: SvgPicture.asset("assets/images/sun.svg"),
          ),
          Positioned(
              left: -10,
              top: 80,
              child: SvgPicture.asset("assets/images/house.svg")),
          Container(
            width: double.infinity,
            height: SizeConfig.screenHeight * 0.15,
            margin: EdgeInsets.symmetric(
              vertical: SizeConfig.blockVertical * 3,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "Pilih sekolah kamu!",
                  style: TextStyle(
                    fontSize: SizeConfig.blockVertical * 2.5,
                    color: blackColor,
                    fontFamily: "Poppins-SemiBold",
                  ),
                ),
                RoundedInputField(
                  icon: Icons.search,
                  color: primaryColor,
                  conColor: whiteColor,
                  hintColor: grey4Color,
                  onChanged: (value) {},
                  hintText: "Masukkan nama sekolah!",
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: double.infinity,
              height: SizeConfig.blockVertical * 50,
              padding: EdgeInsets.only(top: 20, left: 20, right: 20),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))),
              child: SingleChildScrollView(
                child: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Daftar Sekolah",
                        style: TextStyle(
                          fontSize: SizeConfig.blockVertical * 2.2,
                          color: blackColor,
                          fontFamily: "Poppins-Medium",
                        ),
                      ),
                      RoundedFilterButton(
                        press: () {},
                      )
                    ],
                  ),
                  RoundedSelectionButton(
                    title: "SMA N 1 Pangkalpinang",
                    desc: "Pangkalpinang",
                    icon: Icons.school,
                    onTap: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) {
                        return Signin();
                      }));
                    },
                  ),
                  RoundedSelectionButton(
                    title: "SMKN 2 Pangkalpinang",
                    desc: "Pangkalpinang",
                    icon: Icons.school,
                    onTap: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) {
                        return Signin();
                      }));
                    },
                  ),
                  RoundedSelectionButton(
                    title: "SMAN 2 Pangkalpinang",
                    desc: "Pangkalpinang",
                    icon: Icons.school,
                    onTap: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) {
                        return Signin();
                      }));
                    },
                  ),
                  RoundedSelectionButton(
                    title: "SMAN 3 Pangkalpinang",
                    desc: "Pangkalpinang",
                    icon: Icons.school,
                    onTap: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) {
                        return Signin();
                      }));
                    },
                  ),
                  RoundedSelectionButton(
                    title: "SMAN 3 Pangkalpinang",
                    desc: "Pangkalpinang",
                    icon: Icons.school,
                    onTap: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) {
                        return Signin();
                      }));
                    },
                  ),
                  RoundedSelectionButton(
                    title: "SMAN 4 Pangkalpinang",
                    desc: "Pangkalpinang",
                    icon: Icons.school,
                    onTap: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) {
                        return Signin();
                      }));
                    },
                  ),
                ]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
