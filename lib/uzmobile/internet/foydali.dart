import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:ussd_kodlari/uzmobile_models/internet_oy.dart';

class Foydali extends StatelessWidget {
  const Foydali({super.key});
  static List<super_internet> internet = [
    super_internet(
        name: "100 DAQIQA - 100 MB GA",
        money: "700 so'm",
        hajmi: "100 MB",
        deadline: "5 kun",
        code: "*545*1*1#"),
    super_internet(
        name: "200 DAQIQA - 200 MB GA",
        money: "1400 so'm",
        hajmi: "200 MB",
        deadline: "5 kun",
        code: "*545*1*2#"),
    super_internet(
        name: "500 DAQIQA - 500 MB GA",
        money: "3500 so'm",
        hajmi: "500 MB",
        deadline: "5 kun",
        code: "*545*1*3#")
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: internet.length,
      itemBuilder: (context, index) => foydali_items(internet[index]),
    );
  }
}

// ignore: non_constant_identifier_names
Widget foydali_items(super_internet internet) {
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
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
          ),
          // ignore: prefer_const_constructors
          Divider(
            thickness: 1,
            color: Colors.blue,
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
