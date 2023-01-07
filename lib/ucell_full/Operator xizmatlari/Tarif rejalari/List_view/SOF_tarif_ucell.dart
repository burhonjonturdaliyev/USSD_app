// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:ussd_kodlari/ucell_full/Operator%20xizmatlari/Tarif%20rejalari/models/ucell_tarif_models.dart';

// ignore: camel_case_types
class SOF_tarif_ucell extends StatelessWidget {
  const SOF_tarif_ucell({super.key});
  static List<Ucell_tarif_models> models = [
    Ucell_tarif_models(
        name: "18",
        narxi: "18000",
        daqiqa: "1200",
        internet: "3000",
        sms: "500",
        code: "*120#"),
    Ucell_tarif_models(
        name: "30",
        narxi: "30000",
        daqiqa: "3000",
        internet: "7000",
        sms: "1000",
        code: "*120#"),
    Ucell_tarif_models(
        name: "40",
        narxi: "40000",
        daqiqa: "Cheksiz",
        internet: "10000",
        sms: "1500",
        code: "*120#"),
    Ucell_tarif_models(
        name: "50",
        narxi: "50000",
        daqiqa: "Cheksiz",
        internet: "13000",
        sms: "2500",
        code: "*120#"),
    Ucell_tarif_models(
        name: "70",
        narxi: "70000",
        daqiqa: "Cheksiz",
        internet: "22000",
        sms: "4000",
        code: "*120#"),
    Ucell_tarif_models(
        name: "100",
        narxi: "100000",
        daqiqa: "Cheksiz",
        internet: "35000",
        sms: "5000",
        code: "*120#"),
    Ucell_tarif_models(
        name: "150",
        narxi: "150000",
        daqiqa: "Cheksiz",
        internet: "Cheksiz",
        sms: "5000",
        code: "*120#"),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: models.length,
        itemBuilder: (context, index) {
          return SOF_items(models[index]);
        });
  }
}

// ignore: non_constant_identifier_names
Widget SOF_items(Ucell_tarif_models models) {
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
                  "SOF ${models.name}",
                  style: const TextStyle(
                      color: Color(0xff6b2d82),
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                )
              ],
            ),
          ),
          const Divider(
            thickness: 1,
            color: Color(0xff6b2d82),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Row(
                  children: [
                    Expanded(
                        child:
                            Text("Oylik abonent to'lovi: ${models.narxi} so'm"))
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                        child: Text(
                            "O'zbekiston bo'yicha: ${models.daqiqa} daqiqa"))
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                        child: Text(
                            "Oylik internet trafik limiti: ${models.internet} Mb"))
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                        child: Text("O'zbekiston bo'yicha: ${models.sms} SMS"))
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
                            "Limitdan tashqari:\n1 daqiqa narxi: 25 so'm\n1 Mb narxi: 25 so'm\n1 SMS narxi: 25 so'm\n1 MMS narxi: 25 so'm\n1 xalqaro SMS narxi: 1000 so'm\n1 xalqaro MMS narxi: 1263 so'm"))
                  ],
                )
              ],
            ),
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff6b2d82)),
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
