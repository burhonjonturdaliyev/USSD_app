import 'package:flutter/material.dart';
import 'package:ussd_kodlari/Mobiuz_full/Operator%20xizmatlari/Tarif%20rejalari/list_view/faol.dart';

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
            bottom: TabBar(
              indicatorColor: Colors.white,
              isScrollable: false,
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
                Tab(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [const Text("Fresh"), const Text("To'plamlar")],
                  ),
                )
              ],
            )),
        body: const TabBarView(children: [
          Faol_Mobiuz(),
          Text("data"),
          Text("data"),
          Text("data"),
        ]),
      ),
    );
  }
}
