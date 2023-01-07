import 'package:flutter/material.dart';
import 'package:ussd_kodlari/ucell_full/Operator%20xizmatlari/Internet%20toplamlari/List_view/aksiya_internet_ucell.dart';
import 'package:ussd_kodlari/ucell_full/Operator%20xizmatlari/Internet%20toplamlari/List_view/haftalik_internet_ucell.dart';
import 'package:ussd_kodlari/ucell_full/Operator%20xizmatlari/Internet%20toplamlari/List_view/kunlik_internet_ucell.dart';
import 'package:ussd_kodlari/ucell_full/Operator%20xizmatlari/Internet%20toplamlari/List_view/modem_internet_ucell.dart';
import 'package:ussd_kodlari/ucell_full/Operator%20xizmatlari/Internet%20toplamlari/List_view/oylik_internet_ucell.dart';
import 'package:ussd_kodlari/ucell_full/Operator%20xizmatlari/Internet%20toplamlari/List_view/tun_internet_ucell.dart';

// ignore: camel_case_types
class Internet_toplamlari_ucell extends StatelessWidget {
  const Internet_toplamlari_ucell({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 6,
        child: Scaffold(
          appBar: AppBar(
            title: const Text(
              "Internet to'plamlari",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            centerTitle: true,
            elevation: 10,
            backgroundColor: const Color(0xff6b2d82),
            bottom: const TabBar(
                indicatorColor: Colors.white,
                isScrollable: true,
                tabs: [
                  Tab(
                    child: Text("Oylik"),
                  ),
                  Tab(
                    child: Text("Kunlik"),
                  ),
                  Tab(
                    child: Text("Haftalik"),
                  ),
                  Tab(
                    child: Text("Tun"),
                  ),
                  Tab(
                    child: Text("Modem"),
                  ),
                  Tab(
                    child: Text("Aksiya"),
                  ),
                ]),
          ),
          body: const TabBarView(children: [
            oylik_internet_ucell(),
            kunlik_internet_ucell(),
            haftalik_internet_ucell(),
            tun_internet_ucell(),
            modem_internet_ucell(),
            aksiya_internet_ucell(),
          ]),
        ));
  }
}
