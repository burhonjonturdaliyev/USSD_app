import 'package:flutter/material.dart';
import 'package:ussd_kodlari/Mobiuz_full/Operator%20xizmatlari/Tarif%20rejalari/list_view/faol.dart';
import 'package:ussd_kodlari/Mobiuz_full/Operator%20xizmatlari/Tarif%20rejalari/list_view/fresh.dart';
import 'package:ussd_kodlari/Mobiuz_full/Operator%20xizmatlari/Tarif%20rejalari/list_view/imtiyoz.dart';
import 'package:ussd_kodlari/Mobiuz_full/Operator%20xizmatlari/Tarif%20rejalari/list_view/yillik.dart';

// ignore: camel_case_types
class Tarif_Mobiuz extends StatelessWidget {
  const Tarif_Mobiuz({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
            title: const Text(
              "Tarif rejalari",
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            centerTitle: true,
            backgroundColor: Colors.red,
            // ignore: prefer_const_constructors
            bottom: TabBar(
              indicatorColor: Colors.white,
              isScrollable: false,
              // ignore: prefer_const_literals_to_create_immutables
              tabs: [
                const Tab(
                  child: Text("Faol"),
                ),
                const Tab(
                  child: Text("Yillik Tarif"),
                ),
                const Tab(
                  child: Text("Imtiyozli"),
                ),
                const Tab(child: Text("Fresh"))
              ],
            )),
        body: const TabBarView(children: [
          Faol_Mobiuz(),
          Yillik_tarif(),
          Imtiyozli_mobiuz(),
          Fresh_mobiuz(),
        ]),
      ),
    );
  }
}
