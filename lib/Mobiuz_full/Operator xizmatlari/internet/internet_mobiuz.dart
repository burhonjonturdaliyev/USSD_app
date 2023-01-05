import 'package:flutter/material.dart';
import 'package:ussd_kodlari/Mobiuz_full/Operator%20xizmatlari/internet/List_view/kunlik.dart';
import 'package:ussd_kodlari/Mobiuz_full/Operator%20xizmatlari/internet/List_view/oylik_mobi_internet.dart';
import 'package:ussd_kodlari/Mobiuz_full/Operator%20xizmatlari/internet/List_view/tungi.dart';

// ignore: camel_case_types
class Internet_toplamlari_mobi extends StatelessWidget {
  const Internet_toplamlari_mobi({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
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
            backgroundColor: Colors.red,
            bottom: const TabBar(indicatorColor: Colors.white, tabs: [
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
                child: Text("OnNet"),
              )
            ]),
          ),
          body: const TabBarView(children: [
            Oylik_internet_mobi(),
            Kunlik_internet_mobiuz(),
            Tungi_mobiuz_internet(),
            Text("data")
          ]),
        ));
  }
}
