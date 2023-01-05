import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:ussd_kodlari/uzmobile_models/internet_oy.dart';

// ignore: camel_case_types
class Oylik_internet extends StatelessWidget {
  const Oylik_internet({super.key});
  static List<super_internet> internet = [
    super_internet(
        name: "1000 MB",
        money: "9000 so'm",
        hajmi: "1000 MB",
        deadline: "30 kun",
        code: "*222*1*1*1*1#"),
    super_internet(
        name: "1500 MB",
        money: "14000 so'm",
        hajmi: "1500 MB",
        deadline: "30 kun",
        code: "*222*1*1*1*2#"),
    super_internet(
        name: "3000 MB",
        money: "18000 so'm",
        hajmi: "3000 MB",
        deadline: "30 kun",
        code: "*222*1*1*1*3#"),
    super_internet(
        name: "5000 MB",
        money: "25000 so'm",
        hajmi: "5000 MB",
        deadline: "30 kun",
        code: "*222*1*1*1*4#"),
    super_internet(
        name: "8000 MB",
        money: "35000 so'm",
        hajmi: "8000 MB",
        deadline: "30 kun",
        code: "*222*1*1*1*5#"),
    super_internet(
        name: "12000 MB",
        money: "50000 so'm",
        hajmi: "12000 MB",
        deadline: "30 kun",
        code: "*222*1*1*1*6#"),
    super_internet(
        name: "16000 MB",
        money: "60000 so'm",
        hajmi: "12000 MB",
        deadline: "30 kun",
        code: "*222*1*1*1*11#"),
    super_internet(
        name: "20000 MB",
        money: "65000 so'm",
        hajmi: "20000 MB",
        deadline: "30 kun",
        code: "*222*1*1*1*7#"),
    super_internet(
        name: "30000 MB",
        money: "75000 so'm",
        hajmi: "30000 MB",
        deadline: "30 kun",
        code: "*222*1*1*1*8#"),
    super_internet(
        name: "50000 MB",
        money: "85000 so'm",
        hajmi: "50000 MB",
        deadline: "30 kun",
        code: "*222*1*1*1*9#"),
    super_internet(
        name: "75000 MB",
        money: "110000 so'm",
        hajmi: "75000 MB",
        deadline: "30 kun",
        code: "*222*1*1*1*10#")
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: internet.length,
      itemBuilder: (context, index) {
        return oylik_internet_items(internet[index]);
      },
    );
  }
}

// ignore: non_constant_identifier_names
Widget oylik_internet_items(super_internet internet) {
  // ignore: avoid_unnecessary_containers
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
                // ignore: prefer_const_constructors
                Text(
                  internet.name,
                  style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue),
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
