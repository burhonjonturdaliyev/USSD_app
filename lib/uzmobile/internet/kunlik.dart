import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:ussd_kodlari/uzmobile_models/internet_oy.dart';

class Kunlik extends StatelessWidget {
  const Kunlik({super.key});
  // ignore: non_constant_identifier_names
  static List<super_internet> internet = [
    super_internet(
        name: "100 MB",
        money: "3000 so'm",
        hajmi: "100 MB",
        deadline: "1 kun",
        code: "*222*1*1*2*1#"),
    super_internet(
        name: "300 MB",
        money: "6000 so'm",
        hajmi: "300 MB",
        deadline: "1 kun",
        code: "*222*1*1*2*2#"),
    super_internet(
        name: "600 MB",
        money: "9000 so'm",
        hajmi: "600 MB",
        deadline: "1 kun",
        code: "*222*1*1*2*3#")
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: internet.length,
      itemBuilder: (context, index) {
        return Kunlik_items(internet[index]);
      },
    );
  }
}

// ignore: non_constant_identifier_names
Widget Kunlik_items(super_internet internet) {
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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const Icon(
                  Icons.save_alt_outlined,
                  color: Colors.blue,
                ),
                // ignore: prefer_const_constructors
                Text(
                  internet.name,
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const Icon(
                  Icons.show_chart_outlined,
                  color: Colors.blue,
                )
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
