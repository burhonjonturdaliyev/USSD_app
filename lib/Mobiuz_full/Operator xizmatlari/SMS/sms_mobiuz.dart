import 'package:flutter/material.dart';
import 'package:ussd_kodlari/Mobiuz_full/Operator%20xizmatlari/SMS/List_view/Oy_sms.dart';
import 'package:ussd_kodlari/Mobiuz_full/Operator%20xizmatlari/SMS/List_view/sms_onnet.dart';

// ignore: camel_case_types
class SMS_mobiuz extends StatelessWidget {
  const SMS_mobiuz({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: const Text(
              "SMS to'plamlari",
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
                child: Text("SMS OnNet"),
              )
            ]),
          ),
          body:
              const TabBarView(children: [Oy_SMS_mobiuz(), SMS_OnNet_mobiuz()]),
        ));
  }
}
