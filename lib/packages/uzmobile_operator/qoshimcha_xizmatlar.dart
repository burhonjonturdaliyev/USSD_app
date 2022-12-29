import 'package:flutter/material.dart';
import 'package:ussd_kodlari/uzmobile/qoshimcha%20xizmatlar/pullik_xizmatlar.dart';
import 'package:ussd_kodlari/uzmobile/qoshimcha%20xizmatlar/xizmatlar.dart';

// ignore: camel_case_types
class Qoshimcha_xizmatlar extends StatelessWidget {
  const Qoshimcha_xizmatlar({super.key});

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
              ),
            ),
            centerTitle: true,
            bottom: const TabBar(
              isScrollable: false,
              tabs: [
                Tab(
                  child: Text("Xizmatlar"),
                ),
                Tab(
                  child: Text("Pullik xizmatlar"),
                )
              ],
            ),
          ),
          body: const TabBarView(
            children: [Xizmatlar(), Pullik_xizmatlar()],
          ),
        ));
  }
}
