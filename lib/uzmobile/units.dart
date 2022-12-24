// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';

import '../uzmobile_models/unit_packages.dart';

class Units extends StatelessWidget {
  const Units({super.key});
  static List<Unit_packages> units = [
    Unit_packages(
        package_name: "UNITS 700",
        monthly: "7 kunga 7000",
        limits: "700",
        contents:
            "1 Unit = 1mb, 1daqiqa, 1sms Yani berilgan Unitlarni extiyojga qarab istalgan shaklda sarflash mumkin. Misol berilgan 700 Unitlarni 700 mb uchun yoki 700 daqiqa so'zlashish uchun foydalanish mumkin yoki 350 mb va 350 daqiqa uchun.",
        reminder:
            "Units tariff rejalarida oylik internet paketlar xarid qilib bo'lmaydi va berilgan Unitlar tugagandan so'ng hisobidagi mablag' orqali so'zlashib bo'lmaydi tarif reajasi bo'yicha abonent to'lovi to'lab restart (*555#) xizmatini faollashtirish mumkin!",
        codes: "*777*1#"),
    Unit_packages(
        package_name: "UNITS 150",
        monthly: "15 kunga 15000",
        limits: "1500",
        contents:
            "1 Unit = 1mb, 1daqiqa, 1sms Yani berilgan Unitlarni extiyojga qarab istalgan shaklda sarflash mumkin. Misol berilgan 1500 Unitlarni 1500 mb uchun yoki 1500 daqiqa so'zlashish uchun foydalanish mumkin yoki 750 mb va 750 daqiqa uchun.",
        reminder:
            "Units tariff rejalarida oylik internet paketlar xarid qilib bo'lmaydi va berilgan Unitlar tugagandan so'ng hisobdagi mablag' orqali so'zlashib bo'lmaydi tarif rejasi tarif rejasi bo'yicha abonent to'lovi to'lab restar (*555#) xizmatini faollashtirish mumkin!",
        codes: "*777*2#")
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: units.length,
      itemBuilder: (BuildContext context, int index) {
        return Units_item(units[index]);
      },
    );
  }
}

// ignore: non_constant_identifier_names
Widget Units_item(Unit_packages unit_packages) {
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(width: 1, color: Colors.grey)),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Icon(
                  Icons.save_alt_outlined,
                  color: Colors.blue,
                ),
                Text(unit_packages.package_name),
                const Icon(
                  Icons.show_chart_outlined,
                  color: Colors.blue,
                )
              ],
            ),
          ),
          Divider(
            thickness: 2,
            color: Colors.grey,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Text("Abonent to'lovi: ${unit_packages.monthly} so'm"),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Text("Kiritilgan limit - ${unit_packages.limits} Units")
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Expanded(child: Text("${unit_packages.contents}"))
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Expanded(child: Text("Eslatma: ${unit_packages.reminder}"))
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                    onPressed: () {
                      FlutterPhoneDirectCaller.callNumber(unit_packages.codes);
                    },
                    child: Text("Faollashtirish uchun"))
              ],
            ),
          )
        ],
      ),
    ),
  );
}
