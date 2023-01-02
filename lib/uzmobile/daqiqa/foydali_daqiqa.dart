import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:ussd_kodlari/uzmobile_models/foydali_daqiqalar.dart';

// ignore: camel_case_types
class Foydali_daqiqa extends StatelessWidget {
  const Foydali_daqiqa({super.key});
  static List<foydali_tuplam> foydali = [
    foydali_tuplam(
        name: "100 MBNI 100 DAQIQAGA",
        get: "100 Mb",
        give: "100 daqiqa",
        money: "1000 so'm",
        deadline: "5 kun",
        code: "*545*2*1#"),
    foydali_tuplam(
        name: "200 MBNI 200 DAQIQAGA",
        get: "200 Mb",
        give: "200 daqiqa",
        money: "2000 so'm",
        deadline: "5 kun",
        code: "*545*2*2#"),
    foydali_tuplam(
        name: "500 MBNI 500 DAQIQAGA",
        get: "500 Mb",
        give: "500 daqiqa",
        money: "5000 so'm",
        deadline: "5 kun",
        code: "*545*2*3#")
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: foydali.length,
      itemBuilder: (context, index) {
        return foydali_items(foydali[index]);
      },
    );
  }
}

// ignore: non_constant_identifier_names
Widget foydali_items(foydali_tuplam foydali) {
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
                Column(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Text(
                      foydali.name,
                      style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    const Text(
                      "Almashtirish",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    )
                  ],
                ),
              ],
            ),
          ),
          const Divider(
            thickness: 1,
            color: Colors.grey,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  children: [Text("Yechib olish: ${foydali.get}")],
                ),
                Row(
                  children: [Text("Taqdim etish: ${foydali.give}")],
                ),
                Row(
                  children: [Text("Xizmat narxi: ${foydali.money}")],
                ),
                Row(
                  children: [Text("Amal qilish muddati: ${foydali.deadline}")],
                )
              ],
            ),
          ),
          ElevatedButton(
              onPressed: () {
                FlutterPhoneDirectCaller.callNumber(foydali.code);
              },
              child: const Text("Faollashtirish uchun")),
          const SizedBox(
            height: 5,
          )
        ],
      ),
    ),
  );
}
