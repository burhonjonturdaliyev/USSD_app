// ignore_for_file: prefer_const_constructors, duplicate_ignore, unnecessary_string_interpolations, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import '../uzmobile_models/oylik_packages.dart';

class Oylik extends StatelessWidget {
  const Oylik({super.key});

  // ignore: non_constant_identifier_names
  static List<Packages> Package = [
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
    // ignore: avoid_unnecessary_containers
    return Container(
      child: ListView.builder(
          itemCount: Package.length,
          itemBuilder: ((context, index) {
            // ignore: prefer_const_constructors
            return oylik_item(Package[index]);
          })),
    );
  }
}

// ignore: non_constant_identifier_names
Widget oylik_item(Packages packages) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 12.3, vertical: 10),
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                // ignore: prefer_const_constructors
                Text(
                  "${packages.name}",
                  // ignore: prefer_const_constructors
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          // ignore: prefer_const_constructors
          Divider(
            thickness: 1,
            // ignore: prefer_const_constructors
            color: Color.fromARGB(255, 10, 66, 112),
          ),
          // ignore: prefer_const_constructors
          SizedBox(
            height: 10,
          ),
          Row(
            // ignore: prefer_const_literals_to_create_immutables
            children: <Widget>[
              // ignore: prefer_const_constructors
              Expanded(
                // ignore: prefer_const_constructors
                child: Padding(
                  // ignore: prefer_const_constructors
                  padding: EdgeInsets.all(10),
                  // ignore: prefer_const_constructors
                  child: Expanded(
                    child: Text(
                        "Abonent to'lovi oyiga - ${packages.price} so'm\nO'zbekiston bo'yicha daqiqalar ${packages.time} daqiqa\nMobile internet ${packages.internet} Mb\nO'zbekiston bo'yicha ${packages.sms} SMS\nLimitdan tashqari hammasi ${packages.limit_money} so'mdan"),
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 12,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    FlutterPhoneDirectCaller.callNumber("${packages.code}");
                  },
                  onLongPress: () {
                    FlutterPhoneDirectCaller.callNumber("${packages.code}");
                  },
                  child: Text("Faollashtirish uchun"))
            ],
          )
        ],
      ),
    ),
  );
}
