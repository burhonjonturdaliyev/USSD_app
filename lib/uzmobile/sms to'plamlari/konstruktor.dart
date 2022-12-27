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
          borderRadius: BorderRadius.circular(16),
          border: Border.all(width: 1, color: Colors.grey)),
      child: Column(children: [
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
                sms.name,
                // ignore: prefer_const_constructors
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
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
          height: 15,
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
