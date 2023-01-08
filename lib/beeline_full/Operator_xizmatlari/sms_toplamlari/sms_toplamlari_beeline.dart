import 'package:flutter/material.dart';
import 'package:ussd_kodlari/beeline_full/Operator_xizmatlari/sms_toplamlari/List_view/foydali_sms_toplamlari_beeline.dart';
import 'package:ussd_kodlari/beeline_full/Operator_xizmatlari/sms_toplamlari/List_view/kun_sms_toplamlari_beeline.dart';
import 'package:ussd_kodlari/beeline_full/Operator_xizmatlari/sms_toplamlari/List_view/oy_sms_toplamlari_beeline.dart';
import 'package:ussd_kodlari/beeline_full/Operator_xizmatlari/sms_toplamlari/List_view/xalqaro_sms_toplamlari_beeline.dart';

// ignore: camel_case_types
class sms_toplamlari_beeline extends StatelessWidget {
  const sms_toplamlari_beeline({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
              backgroundColor: const Color(0xffffc904),
              centerTitle: true,
              elevation: 10,
              title: const Text(
                "SMS to'plamlari",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              bottom: const TabBar(indicatorColor: Colors.white, tabs: [
                Tab(
                  child: Text("Kun"),
                ),
                Tab(
                  child: Text("Oy"),
                ),
                Tab(
                  child: Text("Xalqaro"),
                ),
                Tab(
                  child: Text("Foydali"),
                ),
              ])),
          body: const TabBarView(children: [
            kun_sms_toplamlari_beeline(),
            oy_sms_toplamlari_beeline(),
            xalqaro_sms_toplamlari_beeline(),
            foydali_sms_toplamlari_beeline(),
          ]),
        ));
  }
}
