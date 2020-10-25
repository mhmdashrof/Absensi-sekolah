import 'package:absensi_sekolah/components/rounded_profile_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:absensi_sekolah/utilities/layout.dart';
import 'package:absensi_sekolah/utilities/constants.dart';
import 'package:absensi_sekolah/components/rounded_selection_button.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _selectedIndex = 0;
  List<Widget> _widgetOptions = <Widget>[
    Stack(children: [
      Positioned(
        top: 0,
        left: 0,
        child: SvgPicture.asset("assets/images/sun.svg"),
      ),
      Positioned(
          top: 80,
          left: -10,
          child: SvgPicture.asset("assets/images/house.svg")),
      Container(
        width: double.infinity,
        height: SizeConfig.screenHeight * 0.15,
        margin: EdgeInsets.symmetric(
          vertical: SizeConfig.blockVertical * 3,
        ),
        child: Column(
          children: [
            RoundedProfileButton(
              image: AssetImage("assets/images/profile.png"),
              desc: "desc",
              onTap: () {},
              title: "title",
            )
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
                  topLeft: Radius.circular(30), topRight: Radius.circular(30))),
          child: SingleChildScrollView(
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Pengumuman",
                    style: TextStyle(
                      fontSize: SizeConfig.blockVertical * 2.2,
                      color: blackColor,
                      fontFamily: "Poppins-Medium",
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              RoundedSelectionButton(
                title: "Pengumuman",
                desc: "25 Oct 20",
                icon: Icons.file_copy,
                onTap: () {},
              ),
              RoundedSelectionButton(
                title: "Pengumuman",
                desc: "25 Oct 20",
                icon: Icons.file_copy,
                onTap: () {},
              ),
              RoundedSelectionButton(
                title: "Pengumuman",
                desc: "25 Oct 20",
                icon: Icons.file_copy,
                onTap: () {},
              ),
              RoundedSelectionButton(
                title: "Pengumuman",
                desc: "25 Oct 20",
                icon: Icons.file_copy,
                onTap: () {},
              ),
              RoundedSelectionButton(
                title: "Pengumuman",
                desc: "25 Oct 20",
                icon: Icons.file_copy,
                onTap: () {},
              ),
              RoundedSelectionButton(
                title: "Pengumuman",
                desc: "25 Oct 20",
                icon: Icons.file_copy,
                onTap: () {},
              ),
            ]),
          ),
        ),
      ),
    ]),
    Text("Hello2"),
  ];

  void _onItemTab(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    // ignore: todo
    // TODO Bottom navigation
    // ignore: todo
    // TODO Cart
    // ignore: todo
    // TODO Profile
    return Scaffold(
      backgroundColor: lightColor,
      resizeToAvoidBottomInset: false,
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              // ignore: deprecated_member_use
              icon: Icon(Icons.home_rounded),
              // ignore: deprecated_member_use
              title: Text("Dashboard")),
          BottomNavigationBarItem(
              icon: Icon(Icons.supervised_user_circle_rounded),
              // ignore: deprecated_member_use
              title: Text("Daftar Guru")),
        ],
        onTap: _onItemTab,
        selectedItemColor: darkColor,
        currentIndex: _selectedIndex,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        splashColor: darkColor,
        backgroundColor: primaryColor,
        child: Icon(Icons.qr_code_scanner),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: _widgetOptions.elementAt(_selectedIndex),
    );
  }
}
