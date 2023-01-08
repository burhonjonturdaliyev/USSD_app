import 'package:flutter/material.dart';
import 'package:ussd_kodlari/beeline_full/Operator_xizmatlari/qoshimcha_xizmatlar/List_view/pullik_xizmatlar_qoshimcha_xizmatlar_beeline.dart';
import 'package:ussd_kodlari/beeline_full/Operator_xizmatlari/qoshimcha_xizmatlar/List_view/xizmatlar_qoshimcha_xizmatlar_beeline.dart';

// ignore: camel_case_types
class qoshimcha_xizmatlar_beeline extends StatelessWidget {
  const qoshimcha_xizmatlar_beeline({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: const Color(0xffffc904),
            elevation: 10,
            title: const Text(
              "Qo'shimcha xizmatlar",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            bottom: const TabBar(indicatorColor: Colors.white, tabs: [
              Tab(
                child: Text("Xizmatlar"),
              ),
              Tab(
                child: Text("Pullik Xizmatlar"),
              ),
            ]),
          ),
          body: const TabBarView(children: [
            xizmatlar_qoshimcha_xizmatlar_beeline(),
            pullik_xizmatlar_qoshimcha_xizmatlar_beeline(),
          ]),
        ));
  }
}
