import 'package:absensi_sekolah/components/rounded_profile_button_v2.dart';
import 'package:absensi_sekolah/screens/master.dart';
import 'package:absensi_sekolah/utilities/constants.dart';
import 'package:flutter/material.dart';

class ProfileStudent extends StatefulWidget {
  @override
  _ProfileStudentState createState() => _ProfileStudentState();
}

class _ProfileStudentState extends State<ProfileStudent> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Text(
            "Profile",
            style: TextStyle(
              fontSize: 24,
              color: blackColor,
              fontFamily: "Poppins-SemiBold",
            ),
          ),
          elevation: 0,
          leadingWidth: 90,
          centerTitle: true,
          toolbarHeight: 100,
          backgroundColor: whiteColor,
          leading: Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 25),
            child: ClipOval(
                child: Material(
              color: primaryColor, // button color
              child: InkWell(
                splashColor: darkColor, // inkwell color
                child: SizedBox(
                  child: Icon(
                    Icons.navigate_before,
                    color: whiteColor,
                    size: 32,
                  ),
                ),
                onTap: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) {
                    return Master();
                  }));
                },
              ),
            )),
          ),
        ),
        body: Column(
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
              CircleAvatar(
                radius: 52,
                backgroundColor: grey4Color,
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage("assets/images/profile.png"),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Muhamad Ashrof",
                    style: TextStyle(
                      fontSize: 20,
                      color: blackColor,
                      fontFamily: "Poppins-Medium",
                    ),
                  ),
                  Text(
                    "Siswa, XII MIA 5",
                    style: TextStyle(
                      fontSize: 16,
                      color: blackColor,
                      fontFamily: "Poppins-Regular",
                    ),
                  ),
                ],
              )
            ]),
            Container(
              width: double.infinity,
              height: size.height * 0.65,
              padding: EdgeInsets.only(left: 20, right: 20, top: 20),
              child: SingleChildScrollView(
                child: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Pesan untuk guru",
                        style: TextStyle(
                          fontSize: 20,
                          color: blackColor,
                          fontFamily: "Poppins-Medium",
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.015,
                  ),
                  RoundedProfileButtonV2(
                    name: "Ashrof",
                    onTap: () {},
                    conColor: greyColor,
                    status: "Iri Bilang Bos?",
                    image: AssetImage("assets/images/profile.png"),
                  ),
                ]),
              ),
            ),
          ],
        ));
  }
}
