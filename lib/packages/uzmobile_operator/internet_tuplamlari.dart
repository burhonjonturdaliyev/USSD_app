import 'package:flutter/material.dart';
import 'package:ussd_kodlari/uzmobile/internet/foydali.dart';
import 'package:ussd_kodlari/uzmobile/internet/kunlik.dart';
import 'package:ussd_kodlari/uzmobile/internet/non_stopuz.dart';
import 'package:ussd_kodlari/uzmobile/internet/oylik.dart';
import 'package:ussd_kodlari/uzmobile/internet/tungi.dart';

// ignore: camel_case_types
class Internet_tuplamlari extends StatelessWidget {
  const Internet_tuplamlari({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Internet to'plamlari"),
          backgroundColor: Colors.blue,
          elevation: 10,
          bottom: const TabBar(isScrollable: true, tabs: [
            Tab(
              child: Text("Oylik"),
            ),
            Tab(
              child: Text("Kunlik"),
            ),
            Tab(
              child: Text("Tungi"),
            ),
            Tab(
              child: Text("NON-Stop"),
            ),
            Tab(
              child: Text("Foydali"),
            )
          ]),
        ),
        body: const TabBarView(children: [
          Oylik_internet(),
          Kunlik(),
          Tungi(),
          Non_stopuz(),
          Foydali(),
        ]),
      ),
    );
  }
}
