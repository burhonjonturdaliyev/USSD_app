// ignore_for_file: camel_case_types, non_constant_identifier_names, prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';

import '../../uzmobile_models/sms_kun.dart';

class SMS_kunlik extends StatelessWidget {
  const SMS_kunlik({super.key});
  static List<sms_kun> sms = [
    sms_kun(
      name: "50 SMS",
      money: "420 so'm",
      daily_money: "420 so'm",
      counting: "50 ta",
      deadline: "1 kun",
      activate: "*111*2*19*1*1#",
      deactivate: "*111*1*19*1*2#",
    ),
    sms_kun(
      name: "100 SMS",
      money: "840 so'm",
      daily_money: "840 so'm",
      counting: "100 ta",
      deadline: "1 kun",
      activate: "*111*2*19*2*1#",
      deactivate: "*111*1*19*2*2#",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: sms.length,
      itemBuilder: (context, index) => sms_kunlik_items(sms[index]),
    );
  }
}

Widget sms_kunlik_items(sms_kun sms) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border: Border.all(width: 1, color: Colors.grey)),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Icon(
                  Icons.save_alt_outlined,
                  color: Colors.blue,
                ),
                Text(
                  sms.name,
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                Icon(
                  Icons.show_chart_outlined,
                  color: Colors.blue,
                )
              ],
            ),
          ),
          Divider(
            thickness: 1,
            color: Colors.grey,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [Text("Narxi: ${sms.money}")],
                ),
                Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Text("Kunlik abonent to'lovi: ${sms.daily_money}")
                  ],
                ),
                Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [Text("Berilgan SMS lar soni: ${sms.counting}")],
                ),
                Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [Text("Amal qilish muddati: ${sms.deadline}")],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          FlutterPhoneDirectCaller.callNumber(sms.activate);
                        },
                        child: Text("Faollashtirish uchun")),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.red),
                        onPressed: () {
                          FlutterPhoneDirectCaller.callNumber(sms.deactivate);
                        },
                        child: Text("O'chirish uchun"))
                  ],
                )
              ],
            ),
          )
        ],
      ),
    ),
  );
}
