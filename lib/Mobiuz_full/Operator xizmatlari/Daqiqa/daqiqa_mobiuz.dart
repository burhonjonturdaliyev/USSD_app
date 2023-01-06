import 'package:flutter/material.dart';
import 'package:ussd_kodlari/Mobiuz_full/Operator%20xizmatlari/Daqiqa/List_view/gap_kop_mobiuz.dart';
import 'package:ussd_kodlari/Mobiuz_full/Operator%20xizmatlari/Daqiqa/List_view/oy_daqiqa_mobiuz.dart';

// ignore: camel_case_types
class Daqiqalar_mobiuz extends StatelessWidget {
  const Daqiqalar_mobiuz({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: const Text(
              "Daqiqa to'plamlari",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            centerTitle: true,
            backgroundColor: Colors.red,
            bottom: const TabBar(indicatorColor: Colors.white, tabs: [
              Tab(
                child: Text("Oy"),
              ),
              Tab(
                child: Text("Gap ko'p"),
              )
            ]),
          ),
          // ignore: prefer_const_literals_to_create_immutables
          body: const TabBarView(
              children: [OyLik_daqiqa_mobiuz(), Gap_kop_mobiuz()]),
        ));
  }
}
