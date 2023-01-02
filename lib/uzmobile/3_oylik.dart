// ignore: file_names
import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:ussd_kodlari/uzmobile_models/3_oylik.dart';

// ignore: camel_case_types
class Super_month extends StatefulWidget {
  const Super_month({super.key});

  @override
  State<Super_month> createState() => _Super_monthState();
}

// ignore: camel_case_types
class _Super_monthState extends State<Super_month> {
  // ignore: non_constant_identifier_names
  static List<three_oylik> three_month = [
    three_oylik(
        name: "STREET UPGRADE",
        monthly: "3 oyga 119700 so'm",
        time: "3 oyga 3000 daqiqa",
        addtime: "3 oyga 6000 daqiqa",
        internet: "3 oyga 26000 MB",
        sms: "3 oyga 3000 SMS",
        content:
            "O'zbekiston bo'yicha daqiqa: 126 so'm (limitdan tashqari) 1 MB internet trafik: 160 so'm (limitdan tashqari) O'zbekiston bo'ylab SMS: 84 so'm (limitdan tashqari)",
        code: "*111*1*11*4*1#"),
    three_oylik(
        name: "FLASH UPGRADE",
        monthly: "3 oyga 209700 so'm",
        time: "3 oyga 6000 daqiqa",
        addtime: "3 oyga 8000 daqiqa",
        internet: "3 oyga 64000 MB",
        sms: "3 oyga 6000 SMS",
        content:
            "O'zbekiston bo'yicha daqiqa: 84 so'm (limitdan tashqari) 1 MB internet trafik: 160 so'm (limitdan tashqari) O'zbekiston bo'ylab SMS: 84 so'm (limitdan tashqari)",
        code: "*111*1*11*5*1#")
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: three_month.length,
      itemBuilder: (BuildContext context, int index) {
        return super_month_items(three_month[index]);
      },
    );
  }
}

// ignore: non_constant_identifier_names
Widget super_month_items(three_oylik three_month) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          // ignore: prefer_const_literals_to_create_immutables
          boxShadow: [
            const BoxShadow(
                color: Colors.black,
                spreadRadius: -5,
                blurRadius: 10,
                offset: Offset(0, 1))
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
                  three_month.name,
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
          const Divider(
            thickness: 3,
            color: Colors.grey,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                        child: Text("Abonent to'lovi: ${three_month.monthly}"))
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                        child:
                            Text("O'zbekiston bo'yicha: ${three_month.time}"))
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                        child: Text("Tarmoq ichida: ${three_month.addtime}"))
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                        child: Text("Mobile internet: ${three_month.internet}"))
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                        child: Text("O'zbekiston bo'yicha: ${three_month.sms}"))
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [Expanded(child: Text(three_month.content))],
                )
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
              onPressed: () {
                FlutterPhoneDirectCaller.callNumber(three_month.code);
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
