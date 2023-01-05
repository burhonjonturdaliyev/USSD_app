import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:ussd_kodlari/uzmobile_models/ussd_models.dart';

// ignore: camel_case_types
class USSD_kodlari extends StatelessWidget {
  const USSD_kodlari({super.key});
  static List<USSD_models> ussd = [
    USSD_models(
        name: "*107#",
        info: "Limit qoldig'i va balans tekshirish",
        code: "*107#"),
    USSD_models(name: "*100*4#", info: "Mening raqamim", code: "*100*4#"),
    USSD_models(
        name: "*100*2#",
        info: "Qolgan paketlar to'g'risida malumot",
        code: "*100*2#"),
    USSD_models(name: "*100*5#", info: "Mening raqamlarim", code: "*100*5#"),
    USSD_models(
        name: "*555#",
        info:
            "<<Restart»> xizmatini muvaffaqiyatli faollashtirganda Street, Flash va Royal tariflar tizimlaridagi abonentlar oylik davrning istalgan kunida bir oylik limitlarni olishadi, bunda oylik abonent to'lovining yechilish muddati yangilanadi.",
        code: "*555#"),
    USSD_models(
        name: "*111*2*7*1#", info: "4G yoki LTE ni yoqish", code: "*111*2*7*1#")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "USSD kodali",
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
        elevation: 10,
      ),
      body: ListView.builder(
        itemCount: ussd.length,
        itemBuilder: (context, index) {
          return ussd_items(ussd[index]);
        },
      ),
    );
  }
}

// ignore: non_constant_identifier_names
Widget ussd_items(USSD_models ussd) {
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
          border: Border.all(width: 1, color: Colors.white24)),
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Text(
                ussd.name,
                style: const TextStyle(
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
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Expanded(child: Text(ussd.info))],
          ),
        ),
        ElevatedButton(
            onPressed: () {
              FlutterPhoneDirectCaller.callNumber(ussd.code);
            },
            child: const Text("Faollashtirish uchun"))
      ]),
    ),
  );
}
