import 'package:flutter/material.dart';
import 'package:ussd_kodlari/Mobiuz_full/Operator%20xizmatlari/Qoshimcha%20xizmatlar/List_view/pullik_xizmatlar_mobiuz.dart';
import 'package:ussd_kodlari/Mobiuz_full/Operator%20xizmatlari/Qoshimcha%20xizmatlar/List_view/xizmatlar_mobiuz.dart';

// ignore: camel_case_types
class Qoshimcha_xizmatlar_mobiuz extends StatelessWidget {
  const Qoshimcha_xizmatlar_mobiuz({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: const Text(
              "Qo'shimcha xizmatlar",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            centerTitle: true,
            backgroundColor: Colors.red,
            elevation: 10,
            bottom: const TabBar(indicatorColor: Colors.white, tabs: [
              Tab(
                child: Text("Xizmatlar"),
              ),
              Tab(
                child: Text("Pullik xizmatlar"),
              )
            ]),
          ),
          body: const TabBarView(
              children: [Xizmatlar_mobiuz(), Pullik_xizmatlar_mobiuz()]),
        ));
  }
}
