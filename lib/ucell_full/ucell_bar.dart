// ignore: file_names
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:ussd_kodlari/pages/home_ucell.dart';
import 'package:ussd_kodlari/ucell_full/ucell_navigation/foydali_ucell.dart';
import 'package:ussd_kodlari/ucell_full/ucell_navigation/operator_ucell.dart';

class BarUcell extends StatefulWidget {
  const BarUcell({super.key});

  @override
  State<BarUcell> createState() => _BarUcellState();
}

class _BarUcellState extends State<BarUcell> {
  int currentIndex = 1;
  List page = [
    const OperatorUcell(),
    const UcellHome_page(),
    const Foydali_Ucell(),
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
        color: const Color(0xff6b2d82),
        buttonBackgroundColor: const Color(0xff6b2d82),
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
