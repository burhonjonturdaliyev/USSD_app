// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:ussd_kodlari/uzmobile_models/sms_oy.dart';

class Xalqaro extends StatelessWidget {
  const Xalqaro({super.key});
  static List<sms_oylik> sms = [
    sms_oylik(
        name: "10 SMS",
        money: "5050 so'm",
        count: "10 ta",
        deadline: "30 kecha - kunduz",
        code: "*111*2*2*1#"),
    sms_oylik(
        name: "20 SMS",
        money: "9260 so'm",
        count: "20 ta",
        deadline: "30 kecha - kunduz",
        code: "*111*2*2*2#"),
    sms_oylik(
        name: "30 SMS",
        money: "12630 so'm",
        count: "30 ta",
        deadline: "30 kecha - kunduz",
        code: "*111*2*2*3#"),
    sms_oylik(
        name: "40 SMS",
        money: "15150 so'm",
        count: "40 ta",
        deadline: "30 kecha - kunduz",
        code: "*111*2*2*4#"),
    sms_oylik(
        name: "50 SMS",
        money: "16840 so'm",
        count: "50 ta",
        deadline: "30 kecha - kunduz",
        code: "*111*2*2*5#")
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: sms.length,
      itemBuilder: (context, index) => xalqaro_items(sms[index]),
    );
  }
}

Widget xalqaro_items(sms_oylik sms) {
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
                // ignore: prefer_const_constructors
                Icon(
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
                // ignore: prefer_const_constructors
                Icon(
                  Icons.show_chart_outlined,
                  color: Colors.blue,
                )
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
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    // ignore: prefer_const_constructors
                    Text("Narxi: ${sms.money}")
                  ],
                ),
                // ignore: prefer_const_constructors
                Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    // ignore: prefer_const_constructors
                    Text("Beilgan sms lar soni: ${sms.count}")
                  ],
                ),
                Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    // ignore: prefer_const_constructors
                    Text("Amal qilish muddati: ${sms.deadline}")
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const Expanded(
                        child: Text(
                            "<<Xalqaro SMS - paketlar>> xizmati abonentlarga arzon narxlarda xalqaro SMS - xabar jo'natish imkonini beradi."))
                  ],
                )
              ],
            ),
          ),
          ElevatedButton(
              onPressed: () {
                FlutterPhoneDirectCaller.callNumber(sms.code);
              },
              child: const Text("Faollashtirish uchun")),
          // ignore: prefer_const_constructors
          SizedBox(
            height: 5,
          )
        ],
      ),
    ),
  );
}
