import 'package:flutter/material.dart';
import 'package:ussd_kodlari/beeline_full/Operator_xizmatlari/tarif_rejalari/List_view/kun_tarif_rejalari_beeline.dart';
import 'package:ussd_kodlari/beeline_full/Operator_xizmatlari/tarif_rejalari/List_view/oy_tarif_rejalari_beeline.dart';
import 'package:ussd_kodlari/beeline_full/Operator_xizmatlari/tarif_rejalari/List_view/toplamlar_tarif_beeline.dart';

// ignore: camel_case_types
class tarif_rejalari_beeline extends StatelessWidget {
  const tarif_rejalari_beeline({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: const Color(0xffffc904),
            title: const Text(
              "Tarif rejalari",
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
                child: Text("Kun"),
              ),
              Tab(
                child: Text("To'plamlar"),
              ),
            ]),
          ),
          body: const TabBarView(children: [
            oy_tarif_rejalari_beeline(),
            kun_tarif_rejalari_beeline(),
            toplamlar_tarif_beeline(),
          ]),
        ));
  }
}
