// ignore: file_names
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:ussd_kodlari/beeline_full/Navigation%20bar/operator_beeline.dart';
import 'package:ussd_kodlari/pages/home_beeline.dart';
import 'package:ussd_kodlari/beeline_full/Navigation bar/foydali_beeline.dart';

class BarBeeline extends StatefulWidget {
  const BarBeeline({super.key});

  @override
  State<BarBeeline> createState() => _BarBeelineState();
}

class _BarBeelineState extends State<BarBeeline> {
  int currentIndex = 1;
  List page = [
    const OperatorBeeline(),
    const Beeline_Homepage(),
    const Foydali_Beeline(),
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
          const Icon(
            Icons.home,
            size: 30,
            color: Colors.white,
          ),
          const Icon(
            Icons.contact_phone,
            size: 30,
            color: Colors.white,
          ),
        ],
        color: const Color(0xffffc904),
        buttonBackgroundColor: const Color(0xffffc904),
        backgroundColor: Colors.transparent,
        animationCurve: Curves.easeInOut,
        animationDuration: const Duration(milliseconds: 300),
        onTap: ontab,
        letIndexChange: (index) => true,
      ),
      body: page[currentIndex],
    );
  }
}
