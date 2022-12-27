import 'package:flutter/material.dart';
import 'package:ussd_kodlari/uzmobile/sms%20to\'plamlari/konstruktor.dart';
import 'package:ussd_kodlari/uzmobile/sms%20to\'plamlari/kunlik.dart';
import 'package:ussd_kodlari/uzmobile/sms%20to\'plamlari/xalqaro.dart';

import '../../uzmobile/sms to\'plamlari/oylik_sms.dart';

// ignore: camel_case_types
class sms_tuplamlari extends StatelessWidget {
  const sms_tuplamlari({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "SMS To'plamlari",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
          bottom: const TabBar(isScrollable: false, tabs: [
            Tab(
              child: Text(
                "Oy",
                style: TextStyle(fontSize: 15),
              ),
            ),
            Tab(
              child: Text(
                "Kun",
                style: TextStyle(fontSize: 15),
              ),
            ),
            Tab(
              child: Text(
                "Xalqaro",
                style: TextStyle(fontSize: 15),
              ),
            ),
            Tab(
              child: Text(
                "Konstraktor",
                style: TextStyle(fontSize: 12),
              ),
            )
          ]),
        ),
        body: const TabBarView(
          children: [
            Oylik_sms(),
            SMS_kunlik(),
            Xalqaro(),
            Konstruktor(),
          ],
        ),
      ),
    );
  }
}
