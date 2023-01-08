import 'package:flutter/material.dart';
import 'package:ussd_kodlari/beeline_full/Operator_xizmatlari/internet_toplamlari/List_view/foydali_internet_toplamlari_beeline.dart';
import 'package:ussd_kodlari/beeline_full/Operator_xizmatlari/internet_toplamlari/List_view/hafta_internet_toplamlari_beeline.dart';
import 'package:ussd_kodlari/beeline_full/Operator_xizmatlari/internet_toplamlari/List_view/kun_internet_toplamlari_beeline.dart';
import 'package:ussd_kodlari/beeline_full/Operator_xizmatlari/internet_toplamlari/List_view/oy_internet_toplamlari_beeline.dart';

// ignore: camel_case_types
class internet_toplamlari_beeline extends StatelessWidget {
  const internet_toplamlari_beeline({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: const Color(0xffffc904),
            title: const Text(
              "Internet to'plamlari",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            centerTitle: true,
            elevation: 10,
            bottom: const TabBar(indicatorColor: Colors.white, tabs: [
              Tab(
                child: Text("Oy"),
              ),
              Tab(
                child: Text("Hafta"),
              ),
              Tab(
                child: Text("Kun"),
              ),
              Tab(
                child: Text("Foydali"),
              ),
            ]),
          ),
          body: const TabBarView(children: [
            oy_internet_toplamlari_beeline(),
            hafta_internet_toplamlari_beeline(),
            kun_internet_toplamlari_beeline(),
            foydali_internet_toplamlari_beeline(),
          ]),
        ));
  }
}
