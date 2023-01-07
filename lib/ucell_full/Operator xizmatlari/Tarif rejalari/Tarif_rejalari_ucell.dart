// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:ussd_kodlari/ucell_full/Operator%20xizmatlari/Tarif%20rejalari/List_view/SOF_tarif_ucell.dart';
import 'package:ussd_kodlari/ucell_full/Operator%20xizmatlari/Tarif%20rejalari/List_view/Tariflar_ucell.dart';

// ignore: camel_case_types
class Tarif_rejalari_ucell extends StatelessWidget {
  const Tarif_rejalari_ucell({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: const Text(
              "Tarif rejalari",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            centerTitle: true,
            elevation: 10,
            backgroundColor: const Color(0xff6b2d82),
            bottom: const TabBar(indicatorColor: Color(0xff6b2d82), tabs: [
              Tab(
                child: Text("Tariflar"),
              ),
              Tab(
                child: Text("SOF tariflar"),
              )
            ]),
          ),
          // ignore: prefer_const_literals_to_create_immutables
          body:
              const TabBarView(children: [Tariflar_ucell(), SOF_tarif_ucell()]),
        ));
  }
}
