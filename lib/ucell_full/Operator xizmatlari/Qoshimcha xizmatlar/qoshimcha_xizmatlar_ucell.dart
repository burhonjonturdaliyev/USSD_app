import 'package:flutter/material.dart';
import 'package:ussd_kodlari/ucell_full/Operator%20xizmatlari/Qoshimcha%20xizmatlar/List_view/pullik_xizmatlar_ucell.dart';
import 'package:ussd_kodlari/ucell_full/Operator%20xizmatlari/Qoshimcha%20xizmatlar/List_view/xizmatlar_ucell.dart';

// ignore: camel_case_types
class qoshimcha_xizmatlar_ucell extends StatelessWidget {
  const qoshimcha_xizmatlar_ucell({super.key});

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
            elevation: 10,
            backgroundColor: const Color(0xff6b2d82),
            bottom: const TabBar(indicatorColor: Colors.white, tabs: [
              Tab(
                child: Text("Xizmatlar"),
              ),
              Tab(
                child: Text("Pullik xizmatlar"),
              )
            ]),
          ),
          // ignore: prefer_const_literals_to_create_immutables
          body: const TabBarView(
              children: [xizmatlar_ucell(), pullik_xizmatlar_ucell()]),
        ));
  }
}
