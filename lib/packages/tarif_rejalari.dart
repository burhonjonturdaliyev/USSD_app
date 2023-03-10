import 'package:flutter/material.dart';
import 'package:ussd_kodlari/uzmobile/3_oylik.dart';
import 'package:ussd_kodlari/uzmobile/imtiyozli.dart';
import 'package:ussd_kodlari/uzmobile/sms%20to\'plamlari/Oylik_tarif.dart';
import 'package:ussd_kodlari/uzmobile/units.dart';

// ignore: camel_case_types
class Tarif_rejalari extends StatelessWidget {
  const Tarif_rejalari({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Tarif rejalari"),
          backgroundColor: Colors.blue,
          bottom: const TabBar(isScrollable: false, tabs: [
            Tab(
              child: Text("Oylik"),
            ),
            Tab(
              child: Text("Units"),
            ),
            Tab(
              child: Text("3 Oylik"),
            ),
            Tab(
              child: Text("Imtiyozli"),
            ),
          ]),
        ),
        body: const TabBarView(children: <Widget>[
          Oylik_Uzmobile(),
          Units(),
          Super_month(),
          Imtiyozli()
        ]),
      ),
    );
  }
}
