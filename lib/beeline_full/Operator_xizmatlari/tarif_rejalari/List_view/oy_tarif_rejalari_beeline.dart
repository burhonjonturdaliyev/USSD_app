import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:ussd_kodlari/beeline_full/Operator_xizmatlari/tarif_rejalari/models/oy_beeline_tarif_models.dart';

// ignore: camel_case_types
class oy_tarif_rejalari_beeline extends StatelessWidget {
  const oy_tarif_rejalari_beeline({super.key});

  static List<oy_tarif_tejalari_beeline_models> models = [
    oy_tarif_tejalari_beeline_models(
        name: "Oson 10",
        narxi: "10000",
        daqiqa: "10",
        internet: "10",
        sms: "10",
        info:
            "\nLimtdan tashqari:\nO'zbekiston bo'yicha qo'ng'iroqlar: 10 so'm\n1 Mb internet trafik: 10 so'm\nO'zbekiston bo'ylab SMS: 10 so'm",
        code: "*110*61#"),
    oy_tarif_tejalari_beeline_models(
        name: "\"Bolajon\"",
        narxi: "11500",
        daqiqa: "500",
        internet: "1500",
        sms: "0",
        info:
            "\nBoshqa barcha qo'ng'iroqlar: 125 so'm\n1 Mb internet trafik: 630 so'm\nSMS xabar jo'natish: 85 so'm",
        code: "*110*61#"),
    oy_tarif_tejalari_beeline_models(
        name: "Allo",
        narxi: "15000",
        daqiqa: "600",
        internet: "0",
        sms: "600",
        info: "",
        code: "*110*40#"),
    oy_tarif_tejalari_beeline_models(
        name: "Zo'r 3",
        narxi: "20000",
        daqiqa: "1500",
        internet: "3000",
        sms: "1500",
        info: "",
        code: "*2*3#"),
    oy_tarif_tejalari_beeline_models(
        name: "Zo'r 5",
        narxi: "27000",
        daqiqa: "2500",
        internet: "5000",
        sms: "2500",
        info: "",
        code: "*2*5#"),
    oy_tarif_tejalari_beeline_models(
        name: "Zo'r 7",
        narxi: "35000",
        daqiqa: "Cheksiz",
        internet: "7000",
        sms: "5000",
        info: "",
        code: "*2*7#"),
    oy_tarif_tejalari_beeline_models(
        name: "Zo'r 12",
        narxi: "50000",
        daqiqa: "Cheksiz",
        internet: "12000",
        sms: "5000",
        info: "",
        code: "*2*12#"),
    oy_tarif_tejalari_beeline_models(
        name: "Zo'r 20",
        narxi: "70000",
        daqiqa: "Cheksiz",
        internet: "20000",
        sms: "5000",
        info: "",
        code: "*2*20#"),
    oy_tarif_tejalari_beeline_models(
        name: "\"Status Silver\" New",
        narxi: "90000",
        daqiqa: "Cheksiz",
        internet: "20000",
        sms: "5000",
        info: "",
        code: "*110*3#"),
    oy_tarif_tejalari_beeline_models(
        name: "\"Status Gold\" New",
        narxi: "130000",
        daqiqa: "Cheksiz",
        internet: "30000",
        sms: "10000",
        info: "",
        code: "*110*2#"),
    oy_tarif_tejalari_beeline_models(
        name: "\"Status Platinium\" New",
        narxi: "189000",
        daqiqa: "Cheksiz",
        internet: "100000",
        sms: "10000",
        info: "",
        code: "*110*1#"),
    oy_tarif_tejalari_beeline_models(
        name: "\"Extra 200\"",
        narxi: "10000",
        daqiqa: "200",
        internet: "200",
        sms: "0",
        info: "Amal qilish muddati: 30 kun",
        code: "*110*500#"),
    oy_tarif_tejalari_beeline_models(
        name: "\"Extra 400\"",
        narxi: "18s000",
        daqiqa: "400",
        internet: "400",
        sms: "0",
        info: "Amal qilish muddati: 30 kun",
        code: "*110*501#"),
    oy_tarif_tejalari_beeline_models(
        name: "\"Extra 600\"",
        narxi: "25000",
        daqiqa: "600",
        internet: "600",
        sms: "0",
        info: "Amal qilish muddati: 30 kun",
        code: "*110*502#"),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: models.length,
        itemBuilder: (context, index) {
          return oy_tarif_rejalari_beeline_items(models[index]);
        });
  }
}

// ignore: non_constant_identifier_names
Widget oy_tarif_rejalari_beeline_items(
    oy_tarif_tejalari_beeline_models models) {
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
                  children: [
                    Expanded(
                        child:
                            Text("Abonent to'lovi oyiga: ${models.narxi} so'm"))
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                        child: Text(
                            "O'zbekiston bo'yicha chiquvchi: ${models.daqiqa} daqiqa"))
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                        child: Text(
                            "Mobil internet trafik: ${models.internet} Mb"))
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                        child:
                            Text("O'zbekiston bo'ylab SMS: ${models.sms} SMS"))
                  ],
                ),
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
