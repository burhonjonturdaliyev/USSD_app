// ignore_for_file: prefer_const_constructors

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:ussd_kodlari/navigater%20pages/operators.dart';
import 'package:ussd_kodlari/navigater%20pages/usefull.dart';
import 'package:ussd_kodlari/pages/home.dart';

class Bar extends StatefulWidget {
  const Bar({super.key});

  @override
  State<Bar> createState() => _BarState();
}

class _BarState extends State<Bar> {
  int currentIndex = 1;
  List page = [
    Operator(),
    Home_page(),
    Foydali_malumotlar(),
  ];
  void ontab(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        index: 1,
        height: 55.0,
        // ignore: prefer_const_literals_to_create_immutables
        items: <Widget>[
          Image.asset(
            "Icons/servise2.png",
            width: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.home,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.contact_phone,
            size: 30,
            color: Colors.white,
          ),
        ],
        color: Colors.blue,
        buttonBackgroundColor: Colors.blue,
        backgroundColor: Colors.transparent,
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 250),
        onTap: ontab,
        letIndexChange: (index) => true,
      ),
      body: page[currentIndex],
    );
  }
}
