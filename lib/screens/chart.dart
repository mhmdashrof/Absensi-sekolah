import 'dart:ui';

import 'package:absensi_sekolah/components/donut_pie_chart.dart';
import 'package:absensi_sekolah/utilities/constants.dart';
import 'package:flutter/material.dart';

class Chart extends StatefulWidget {
  @override
  _ChartState createState() => _ChartState();
}

class _ChartState extends State<Chart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      "Absensi Saya",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    ),
                  ),
                  SizedBox(height: 25),
                  _buildStatistic(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildStatistic() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
        border: Border.all(color: Colors.white),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            offset: Offset(0, 1),
            spreadRadius: 1,
            blurRadius: 1,
          ),
        ],
      ),
      margin: EdgeInsets.symmetric(horizontal: 16),
      // padding: EdgeInsets.symmetric(vertical: 20),
      child: Center(
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Container(
              width: 200,
              height: 200,
              child: DonutPieChart.withSampleData(),
            ),
            SingleChildScrollView(
              child: Container(
                height: 180.0,
                width: 105.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Keterangan",
                      style:
                          TextStyle(fontSize: 14, fontFamily: "Poppins-Medium"),
                    ),
                    _buildStatisticItem(Colors.blue, "", "Masuk"),
                    _buildStatisticItem(Colors.yellowAccent, "", "Izin"),
                    _buildStatisticItem(Colors.redAccent, "", "Tidak Masuk"),
                    new Padding(
                      padding: new EdgeInsets.only(top: 10.0),
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: 30.0,
                          width: 150.0,
                          decoration: BoxDecoration(
                            color: Color(0xFF2196F3),
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                "Details",
                                style: TextStyle(
                                  color: whiteColor,
                                  fontFamily: "Poppins-SemiBold",
                                  fontSize: 16,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStatisticItem(Color color, String title, String value) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        Icon(
          Icons.circle,
          size: 20,
          color: color,
        ),
        SizedBox(width: 5),
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              title,
              style: TextStyle(
                color: Colors.black38,
              ),
            ),
            Text(value),
          ],
        ),
      ],
    );
  }
}
