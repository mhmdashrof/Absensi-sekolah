import 'package:absensi_sekolah/screens/signinv2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:absensi_sekolah/utilities/constants.dart';
import 'package:absensi_sekolah/components/list_container.dart';
import 'package:absensi_sekolah/components/rounded_search_field_v2.dart';
import 'package:absensi_sekolah/components/rounded_filter_button_v2.dart';
import 'package:absensi_sekolah/components/rounded_selection_button_v2.dart';

class SchoolListV2 extends StatefulWidget {
  @override
  _SchoolListV2State createState() => _SchoolListV2State();
}

class _SchoolListV2State extends State<SchoolListV2> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: lightColor,
        body: Stack(children: [
          Positioned(
            top: 0,
            left: 0,
            child: SvgPicture.asset("assets/images/sun.svg"),
          ),
          Positioned(
              left: -300,
              top: 10,
              child: SvgPicture.asset("assets/images/house.svg")),
          Container(
            margin: EdgeInsets.symmetric(vertical: size.height * 0.05),
            width: double.infinity,
            child: Column(
              children: [
                Text(
                  "Pilih sekolah kamu!",
                  style: TextStyle(
                    fontSize: 24,
                    color: blackColor,
                    fontFamily: "Poppins-Bold",
                  ),
                ),
                RoundedSearchFieldV2(
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
          ListContainer(
            title: "Daftar sekolah",
            allSize: 70,
            filterButton: RoundedFilterButtonV2(
              onTap: () {},
              allSize: 16,
            ),
            selectionButton: RoundedSelectionButtonV2(
              allSize: 18,
              desc: "Desc",
              onTap: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) {
                  return Signinv2();
                }));
              },
              title: "title",
              icon: Icons.insert_drive_file,
            ),
          )
        ]));
  }
}
