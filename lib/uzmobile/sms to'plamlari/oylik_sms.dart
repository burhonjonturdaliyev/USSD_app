// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:ussd_kodlari/uzmobile_models/sms_oy.dart';

// ignore: camel_case_types
class Oylik_sms extends StatelessWidget {
  const Oylik_sms({super.key});
  static List<sms_oylik> sms = [
    sms_oylik(
        name: "10 SMS",
        money: "420 so'm",
        count: "10 ta",
        deadline: "30 kun",
        code: "*111*2*1*1#"),
    sms_oylik(
        name: "50 SMS",
        money: "1680 so'm",
        count: "50 ta",
        deadline: "30 kun",
        code: "*111*2*1*2#"),
    sms_oylik(
        name: "200 SMS",
        money: "5200 so'm",
        count: "200 ta",
        deadline: "30 kun",
        code: "*111*2*1*3#"),
    sms_oylik(
        name: "500 SMS",
        money: "9500 so'm",
        count: "500 ta",
        deadline: "30 kun",
        code: "*111*2*1*4#"),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: sms.length,
      itemBuilder: (context, index) => oylik_sms_items(sms[index]),
    );
  }
}

// ignore: non_constant_identifier_names
Widget oylik_sms_items(sms_oylik sms) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          // ignore: prefer_const_literals_to_create_immutables
          boxShadow: [
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
                  sms.name,
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Divider(
            thickness: 1,
            color: Colors.blue,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Text("Narxi :${sms.money}"),
                  ],
                ),
                Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Text("Berilgan SMSlar soni: ${sms.count}"),
                  ],
                ),
                Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Text("Amal qilish muddati: ${sms.deadline}"),
                  ],
                )
              ],
            ),
          ),
          ElevatedButton(
              onPressed: () {
                FlutterPhoneDirectCaller.callNumber(sms.code);
              },
              child: const Text("Faollashtish uchun")),
          SizedBox(
            height: 5,
          )
        ],
      ),
    ),
  );
}
