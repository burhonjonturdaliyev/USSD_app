// ignore: file_names
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:ussd_kodlari/Mobiuz_full/Navigation%20panel/foydali_mobi.dart';
import 'package:ussd_kodlari/Mobiuz_full/Navigation%20panel/operator_mobi.dart';
import 'package:ussd_kodlari/pages/home_mobiuz.dart';

class BarMobi extends StatefulWidget {
  const BarMobi({super.key});

  @override
  State<BarMobi> createState() => _BarMobiState();
}

class _BarMobiState extends State<BarMobi> {
  int currentIndex = 1;
  List page = [
    const OperatorMobi(),
    const MobiuzHome_page(),
    const Foydali_Mobiuz(),
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
        color: Colors.red,
        buttonBackgroundColor: Colors.red,
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
