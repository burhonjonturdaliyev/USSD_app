import 'package:flutter/material.dart';
import 'package:ussd_kodlari/ucell_full/Operator%20xizmatlari/SMS%20toplamlari/List_view/kunlik_sms_ucell.dart';
import 'package:ussd_kodlari/ucell_full/Operator%20xizmatlari/SMS%20toplamlari/List_view/oylik_sms_ucell.dart';
import 'package:ussd_kodlari/ucell_full/Operator%20xizmatlari/SMS%20toplamlari/List_view/xalqaro_sms_ucell.dart';

// ignore: camel_case_types
class sms_toplamlar_ucell extends StatelessWidget {
  const sms_toplamlar_ucell({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: const Text(
              "SMS to'plamlari",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            centerTitle: true,
            elevation: 10,
            backgroundColor: const Color(0xff6b2d82),
            bottom: const TabBar(indicatorColor: Colors.white, tabs: [
              Tab(
                child: Text("Oylik"),
              ),
              Tab(
                child: Text("Kunlik"),
              ),
              Tab(
                child: Text("Xalqaro"),
              )
            ]),
          ),
          body: const TabBarView(children: [
            oylik_sms_ucell(),
            kunlik_sms_ucell(),
            xalqaro_sms_ucell(),
          ]),
        ));
  }
}
