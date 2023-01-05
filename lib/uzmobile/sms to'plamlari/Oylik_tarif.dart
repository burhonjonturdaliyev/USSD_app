// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';

import '../../uzmobile_models/oylik_packages.dart';

// ignore: camel_case_types
class Oylik_Uzmobile extends StatelessWidget {
  const Oylik_Uzmobile({super.key});

  static List<Packages> models = [
    Packages(
        price: "10,000",
        time: "10",
        internet: "10",
        sms: "10",
        limit_money: "10",
        name: 'ODDIY 10',
        code: '*111*1*11*12#'),
    Packages(
        price: "39,900",
        time: "750 daqiqa\nTarmoq ichida 1500",
        internet: "6500",
        sms: "750",
        limit_money: "1000",
        name: 'STREET',
        code: '*111*1*11*1*1#'),
    Packages(
        price: "49,900",
        time: "1000 daqiqa\nTarmoq ichida 2000",
        internet: "10000",
        sms: "10000",
        limit_money: "280",
        name: 'ONLIME',
        code: '*111*1*11*6#'),
    Packages(
        name: "FLASH",
        price: "69,900",
        time: "1500 daqiqa\nTaqmoq ichida 2000",
        internet: "16000",
        sms: "1500",
        limit_money: "700",
        code: "*111*1*11*2*1#"),
    Packages(
        name: "ISHBILARMON",
        price: "99,000",
        time: "Cheksiz",
        internet: "25000",
        sms: "3000",
        limit_money: "500",
        code: "*111*1*11*10#"),
    Packages(
        name: "ROYAL",
        price: "149,900",
        time: "Cheksiz",
        internet: "Cheksiz",
        sms: "5000",
        limit_money: "1",
        code: "*111*1*11*2*1#"),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: models.length,
        itemBuilder: (context, index) {
          return oylik_items(models[index]);
        });
  }
}

// ignore: non_constant_identifier_names
Widget oylik_items(Packages models) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(width: 1, color: Colors.white24),
          borderRadius: BorderRadius.circular(16),
          // ignore: prefer_const_literals_to_create_immutables
          boxShadow: [
            const BoxShadow(
                color: Colors.black,
                spreadRadius: -5,
                blurRadius: 10,
                offset: Offset(0, 1))
          ]),
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
                  models.name,
                  style: const TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                )
              ],
            ),
          ),
          const Divider(
            thickness: 1,
            color: Colors.blue,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                        child:
                            Text("Abonent to'lovi oyiga: ${models.price} so'm"))
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                        child: Text(
                            "O'zbekiston bo'yicha daqiqalar ${models.time} daqiqa"))
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                        child: Text("Mobile internet ${models.internet} Mb"))
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                        child: Text("O'zbekiston bo'yicha ${models.sms} SMS"))
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                        child: Text(
                            "Limitdan tashqari hammasi ${models.limit_money} so'mdan"))
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
              onPressed: () {
                FlutterPhoneDirectCaller.callNumber(models.code);
              },
              child: const Text("Faollashtirish uchun")),
          const SizedBox(
            height: 10,
          )
        ],
      ),
    ),
  );
}
