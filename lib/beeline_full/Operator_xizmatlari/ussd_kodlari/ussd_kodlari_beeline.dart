import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';

import 'models/ussd_kodlari_beeline_models.dart';

// ignore: camel_case_types
class ussd_kodlari_beeline extends StatelessWidget {
  const ussd_kodlari_beeline({super.key});

  static List<ussd_kodlari_beeline_models> models = [
    ussd_kodlari_beeline_models(
      info: "Balansni tekshirish",
      code: "*102#",
    ),
    ussd_kodlari_beeline_models(
      info: "Mening raqamim",
      code: "*148#",
    ),
    ussd_kodlari_beeline_models(
      info: "Mb qoldig'ini tekshirish",
      code: "*103#",
    ),
    ussd_kodlari_beeline_models(
      info: "SMS qoldig'ini tekshirish",
      code: "*105#",
    ),
    ussd_kodlari_beeline_models(
      info: "Daqiqalar qoldig'ini tekshirish",
      code: "*106#",
    ),
    ussd_kodlari_beeline_models(
      info: "Barcha xizmatlarni o'chirish",
      code: "*115#",
    ),
    ussd_kodlari_beeline_models(
      info: "Abonent to'lovining yechilish sanasini aniqlash",
      code: "*202#",
    ),
    ussd_kodlari_beeline_models(
      info: "Mening raqamlarim",
      code: "*303#",
    ),
    ussd_kodlari_beeline_models(
      info: "Tarif rejani tekshirish",
      code: "*110*05#",
    ),
    ussd_kodlari_beeline_models(
      info: "Qo'shimcha xizmatlarni tekshirish",
      code: "*110*09#",
    ),
    ussd_kodlari_beeline_models(
      info: "Mb ijtimoiy tarmoqlar uchun",
      code: "*101#",
    ),
    ussd_kodlari_beeline_models(
      info: "Avtomatik internet sozlamalari",
      code: "*22#",
    ),
    ussd_kodlari_beeline_models(
      info: "Telefonning IMEI-kodini bilib olish",
      code: "*#06#",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffffc904),
        centerTitle: true,
        elevation: 10,
        title: const Text(
          "USSD kodlari",
          style: TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView.builder(
          itemCount: models.length,
          itemBuilder: (context, index) {
            return ussd_kodlari_beeline_items(models[index]);
          }),
    );
  }
}

// ignore: non_constant_identifier_names
Widget ussd_kodlari_beeline_items(ussd_kodlari_beeline_models models) {
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
                  models.code,
                  style: const TextStyle(
                      color: Color(0xffffc904),
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                )
              ],
            ),
          ),
          const Divider(
            thickness: 1,
            color: Color(0xffffc904),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Row(
                  children: [Expanded(child: Text(models.info))],
                ),
              ],
            ),
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xffffc904)),
              onPressed: () {
                FlutterPhoneDirectCaller.callNumber(models.code);
              },
              child: const Text("Faollashtish uchun")),
          const SizedBox(
            height: 10,
          )
        ],
      ),
    ),
  );
}
