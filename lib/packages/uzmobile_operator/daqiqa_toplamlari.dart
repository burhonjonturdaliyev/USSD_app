// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:ussd_kodlari/uzmobile/daqiqa/daqiqalar.dart';
import 'package:ussd_kodlari/uzmobile/daqiqa/foydali_daqiqa.dart';
import 'package:ussd_kodlari/uzmobile/daqiqa/konstruktor_daqiqa.dart';

// ignore: camel_case_types
class Daqiqa_tuplamlari extends StatelessWidget {
  const Daqiqa_tuplamlari({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Daqiqa to'plamlari",
            style: const TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          // ignore: prefer_const_literals_to_create_immutables
          bottom: const TabBar(isScrollable: false, tabs: [
            Tab(
              child: Text("Daqiqalar"),
            ),
            Tab(
              child: Text("Konstruktor"),
            ),
            Tab(
              child: Text("Foydali"),
            )
          ]),
        ),
        // ignore: prefer_const_literals_to_create_immutables
        body: TabBarView(
            // ignore: prefer_const_literals_to_create_immutables
            children: [Daqiqalar_tp(), Konstruktor_daqiqa(), Foydali_daqiqa()]),
      ),
    );
  }
}
