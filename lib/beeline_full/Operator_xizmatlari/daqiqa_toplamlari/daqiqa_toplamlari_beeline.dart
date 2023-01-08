import 'package:flutter/material.dart';
import 'package:ussd_kodlari/beeline_full/Operator_xizmatlari/daqiqa_toplamlari/List_view/daqiqalar_daqiqa_toplamlari_beeline.dart';
import 'package:ussd_kodlari/beeline_full/Operator_xizmatlari/daqiqa_toplamlari/List_view/foydali_daqiqa_toplamlari_beeline.dart';

// ignore: camel_case_types
class daqiqa_toplamlari_beeline extends StatelessWidget {
  const daqiqa_toplamlari_beeline({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: const Color(0xffffc904),
            centerTitle: true,
            elevation: 10,
            title: const Text(
              "Daqiqa to'plamlari",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            bottom: const TabBar(indicatorColor: Colors.white, tabs: [
              Tab(
                child: Text("Daqiqalar"),
              ),
              Tab(
                child: Text("Foydali"),
              ),
            ]),
          ),
          body: const TabBarView(children: [
            daqiqalar_daqiqa_toplamlari_beeline(),
            foydali_daqiqa_toplamlari_beeline(),
          ]),
        ));
  }
}
