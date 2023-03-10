import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:ussd_kodlari/uzmobile_models/sms_oy.dart';

class Konstruktor extends StatelessWidget {
  const Konstruktor({super.key});
  static List<sms_oylik> sms = [
    sms_oylik(
        name: "10 SMS",
        money: "420 so'm",
        count: "10 ta",
        deadline: "30 kun",
        code: "*9999*2*4*1#"),
    sms_oylik(
        name: "50 SMS",
        money: "1680 so'm",
        count: "50 ta",
        deadline: "30 kun",
        code: "*9999*2*4*2#"),
    sms_oylik(
        name: "300 SMS",
        money: "9470 so'm",
        count: "300 ta",
        deadline: "30 kun",
        code: "*9999*2*4*4#"),
    sms_oylik(
        name: "500 SMS",
        money: "12630 so'm",
        count: "500 ta",
        deadline: "30 kun",
        code: "*9999*2*4*5#")
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: sms.length,
      itemBuilder: (context, index) => konstruktor_items(sms[index]),
    );
  }
}

// ignore: non_constant_identifier_names
Widget konstruktor_items(sms_oylik sms) {
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
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Text(
                sms.name,
                // ignore: prefer_const_constructors
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
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
                // ignore: prefer_const_constructors
                children: [Text("Narxi: ${sms.money}")],
              ),
              Row(
                // ignore: prefer_const_constructors
                children: [Text("Berilgan SMS lar soni: ${sms.count}")],
              ),
              Row(
                // ignore: prefer_const_constructors
                children: [Text("Amal qilish muddati: ${sms.deadline}")],
              )
            ],
          ),
        ),
        // ignore: prefer_const_constructors
        SizedBox(
          height: 5,
        ),
        ElevatedButton(
            onPressed: () {
              FlutterPhoneDirectCaller.callNumber(sms.code);
            },
            child: const Text("Faollashtirish uchun")),
        // ignore: prefer_const_constructors
        SizedBox(
          height: 10,
        )
      ]),
    ),
  );
}
