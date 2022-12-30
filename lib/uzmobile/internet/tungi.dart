import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:ussd_kodlari/uzmobile_models/internet_oy.dart';

class Tungi extends StatelessWidget {
  const Tungi({super.key});

  static List<super_internet> internet = [
    super_internet(
        name: "TUN",
        money: "3999 so'm",
        hajmi: "12000MB",
        deadline: "1 tun (01:00 - 07:59)",
        code: "*222*2*18*1#"),
    super_internet(
        name: "7 TUN",
        money: "19999 so'm",
        hajmi: "Vip",
        deadline: "7 tun (01:00 - 07:59)",
        code: "*111*2*18*3#"),
    super_internet(
        name: "30 TUN",
        money: "69999 so'm",
        hajmi: "Vip",
        deadline: "30 tun (01:00 - 07:59)",
        code: "*111*2*18*2#")
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: internet.length,
      itemBuilder: (context, index) => tungi_items(internet[index]),
    );
  }
}

// ignore: non_constant_identifier_names
Widget tungi_items(super_internet internet) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          // ignore: prefer_const_literals_to_create_immutables
          boxShadow: [
            // ignore: prefer_const_constructors
            BoxShadow(
                color: Colors.black,
                spreadRadius: -5,
                blurRadius: 10,
                offset: const Offset(0, 1))
          ],
          border: Border.all(width: 1, color: Colors.white30)),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Text(
                  internet.name,
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          // ignore: prefer_const_constructors
          Divider(
            thickness: 1,
            color: Colors.grey,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  // ignore: prefer_const_literals_to_create_immutables, prefer_const_constructors
                  children: [Text("To'plam narxi: ${internet.money}")],
                ),
                Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    // ignore: prefer_const_constructors
                    Text("Berilgan trafik hajmi: ${internet.hajmi}")
                  ],
                ),
                Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    // ignore: prefer_const_constructors
                    Text("Amal qilish muddati: ${internet.deadline}")
                  ],
                ),
              ],
            ),
          ),
          // ignore: prefer_const_constructors
          ElevatedButton(
              onPressed: () {
                FlutterPhoneDirectCaller.callNumber(internet.code);
              },
              child: const Text("Faollashtirish uchun"))
        ],
      ),
    ),
  );
}
