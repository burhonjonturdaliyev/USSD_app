// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:ussd_kodlari/ucell_full/Operator%20xizmatlari/Tarif%20rejalari/models/ucell_tarif_models.dart';

// ignore: camel_case_types
class Tariflar_ucell extends StatelessWidget {
  const Tariflar_ucell({super.key});

  static List<Ucell_tarif_models> models = [
    Ucell_tarif_models(
        name: "Uchar internet",
        narxi: "Oylik abonent to'lovi: 22000 so'm",
        daqiqa:
            "Oylik internet tarif Cheksiz\nYoutube, Facebook, Telegram, Whatsapp uchun Cheksiz",
        internet:
            "Abonentga 2Gb maksimal tezlikda taqdim etiladi, keyin internet keyingi abonent to'lovini yechgunicha 64 kbit/s gacha qilib belgilanadi",
        sms:
            "Abonentga 3Gb maksimal tezlikda taqdim etiladi, keyin internet keyingi abonent to'lovini yechgunicha 64 kbit/s gacha qilib belgilanadi\n\nTarifga o'tish mumkin emas",
        code: "*120#"),
    Ucell_tarif_models(
        name: "Student",
        narxi: "Oylik abonent to'lovi: 8000 so'm",
        daqiqa:
            "Student tarif rejasi ichida 500 daqiqa\nO'zbekiston bo'yicha: 200 daqiqa",
        internet: "Oylik internet - trafik: 100 Mb",
        sms:
            "O'zbekiston bo'yicha: 200 SMS\n\nTarif rejasi faqat yangi ulanishlar uchun amal qiladi. Tarif rejasiga boshqa tarifdan o'tish yopiq",
        code: "120#"),
    Ucell_tarif_models(
        name: "Marhamat",
        narxi: "Oylik abonent to'lovi: 10000 so'm",
        daqiqa: "O'zbekiston bo'yicha: 30 daqiqa",
        internet: "O'zbekiston bo'yicha: 30 Mb",
        sms:
            "O'zbekiston bo'yicha 1 daqiqa,1 Mb internet - trafik, 1 SMS va 1MMS narxi 10 so'mdan\n\nTarif faqat yangi ulanishlar uchun amal qiladi",
        code: "*120#"),
    Ucell_tarif_models(
        name: "Tantana",
        narxi: "Oylik abonent to'lovi: 15000 so'm",
        daqiqa: "O'zbekiston bo'yicha: 1000 daqiqa",
        internet: "Internet mavjud emas",
        sms: "O'zbekiston bo'yicha: 1000 SMS",
        code: "*120#"),
    Ucell_tarif_models(
        name: "Katta tantana",
        narxi: "Oylik abonent to'lovi: 20000 so'm",
        daqiqa: "O'zbekiston bo'yicha: 1500 daqiqa",
        internet: "Internet mavjud emas",
        sms: "O'zbekiston bo'yicha: 1500 SMS",
        code: "*120#"),
    Ucell_tarif_models(
        name: "Yengil hafta",
        narxi: "Haftalik abonent to'lovi: 5000 so'm",
        daqiqa: "O'zbekiston bo'yicha: 200 daqiqa",
        internet: "O'zbekiston bo'yicha: 200 Mb",
        sms:
            "O'zbekiston bo'yicha: 200 SMS\n\nLimitdan tashqari:\nTarmoq ichidagi daqiqa 95 so'm\n1 Mb internet narxi 450 so'm\nO'zbekiston bo'yicha qo'ng'iroq 125 so'm\nO'zbekiston bo'yicha chiquvchi SMS 80 so'm",
        code: "*120#"),
    Ucell_tarif_models(
        name: "Turist S",
        narxi: "Oylik abonent to'lovi: 25000 so'm",
        daqiqa:
            "O'zbekiston bo'yicha: 300 daqiqa\nTarif rejalari tizimi ichida cheksiz muloqot",
        internet:
            "O'zbekiston bo'yicha: 2 Gb\nFacebook, Telegram, Whatsapp uchun oylik internet trafik limiti 2000 MB",
        sms: "O'zbekiston bo'yicha: 300 SMS",
        code: "*120#"),
    Ucell_tarif_models(
        name: "Turist M",
        narxi: "Oylik abonent to'lovi: 50000 so'm",
        daqiqa:
            "O'zbekiston bo'yicha: 500 daqiqa\nTarif rejalari tizimi ichida cheksiz muloqot\nXalqaro qo'ng'iroqlar: 5 daqiqa",
        internet:
            "O'zbekiston bo'yicha: 5 Gb\nFacebook, Telegram, Whatsapp uchun oylik internet trafik limiti 5 GB",
        sms: "O'zbekiston bo'yicha: 500 SMS\nXalqaro: 20 SMS",
        code: "*120#"),
    Ucell_tarif_models(
        name: "Turist L",
        narxi: "Oylik abonent to'lovi: 80000 so'm",
        daqiqa:
            "O'zbekiston bo'yicha: 1000 daqiqa\nTarif rejalari tizimi ichida cheksiz muloqot\nXalqaro qo'ng'iroqlar: 15 daqiqa",
        internet:
            "O'zbekiston bo'yicha: 10 Gb\nFacebook, Telegram, Whatsapp uchun oylik internet trafik limiti 10 GB",
        sms: "O'zbekiston bo'yicha: 1000 SMS\nXalqaro: 30 SMS",
        code: "*120#"),
    Ucell_tarif_models(
        name: "Minnatdormiz!",
        narxi: "Abonent to'lovi mavjud emas",
        daqiqa:
            "O'zbekiston bo'yicha: 60 daqiqa\nBonus daqiqalar joriy oyning oxirigacha amal qiladi",
        internet: "",
        sms:
            "2020-yil 28-martdan tarif rejasiga 31.12.1965-yilgacha tug'ilgan abonentlar ulanishlari mumkin",
        code: "*355#"),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: models.length,
        itemBuilder: (context, index) {
          return Ucell_tarif_items(models[index]);
        });
  }
}

// ignore: non_constant_identifier_names
Widget Ucell_tarif_items(Ucell_tarif_models models) {
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
                  children: [Expanded(child: Text(models.narxi))],
                ),
                Row(
                  children: [Expanded(child: Text(models.daqiqa))],
                ),
                Row(
                  children: [Expanded(child: Text(models.internet))],
                ),
                Row(
                  children: [Expanded(child: Text(models.sms))],
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
