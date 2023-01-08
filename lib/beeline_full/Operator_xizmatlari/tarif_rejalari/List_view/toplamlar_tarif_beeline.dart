import 'package:flutter/material.dart';
import 'package:ussd_kodlari/beeline_full/Operator_xizmatlari/tarif_rejalari/models/toplam_tarif_beeline_models.dart';

// ignore: camel_case_types
class toplamlar_tarif_beeline extends StatelessWidget {
  const toplamlar_tarif_beeline({super.key});

  static List<toplam_tarif_beeline_models> models = [
    toplam_tarif_beeline_models(
        name: "\"Welcome\"",
        narxi: "30000",
        daqiqa: "100",
        internet: "3000+1000",
        sms: "0",
        info:
            "\nTarmoq ichidagi chiquvchi qo'ng'iroqlar: 100 so'm\nBoshqa barcha chiquvchilar: 125 so'm\nBitta SMS xabar yo'llash: 120 so'm\n1 Mb internet trafik: 630 so'm\n\nUshbu tarifga ulanish imkoniyati faqat O'zbekistonga kelgan xorijiy sayyohlar uchun mavjud\nTarifdan tarifga o'tish amal qilmaydi"),
    toplam_tarif_beeline_models(
        name: "\"G'alaba\"",
        narxi: "0",
        daqiqa: "300",
        internet: "0",
        sms: "300",
        info:
            "Bayram kunlari - 21-mart, 9-may, 1-sentabr va 31-dekabrda abonentlarga Qozog'iston. Tojikiston, Qirg'iziston, Turkmaniston, va Rassiyayaga xalqaro qo'n'giroqlarni amalga oshirish uchun 7 kunga bepul 30 daqiqa ajratiladi\n\nO'zbekiston bo'yicha qo'ng'iroqlar: 126 so'm\n1 Mb internet trafik: 421 so'm\nO'zbekiston bo'ylab SMS: 84 so'm\n\nTarif rejasiga o'tish uchun kompaniyaning ofislariga tashrif buyurishingiz kerak"),
    toplam_tarif_beeline_models(
        name: "\"Ustoz\"",
        narxi: "14 kunga 10000",
        daqiqa: "14 kunga 750",
        internet: "14 kunga 250",
        sms: "14 kunga 50",
        info:
            "Kasb bayram kunlari xalqaro qo'ng'iroqlar uchun kiritilgan daqiqalar to'plami 7 kunga 30 daqiqani tashkil etadi"),
    toplam_tarif_beeline_models(
        name: "\"Shifokor\"",
        narxi: "14 kunga 10000",
        daqiqa: "14 kunga 750",
        internet: "14 kunga 250",
        sms: "14 kunga 50",
        info:
            "Kasb bayram kunlari xalqaro qo'ng'iroqlar uchun kiritilgan daqiqalar to'plami 7 kunga 30 daqiqani tashkil etadi"),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: models.length,
        itemBuilder: (context, index) {
          return toplamlar_tarif_beeline_items(models[index]);
        });
  }
}

// ignore: non_constant_identifier_names
Widget toplamlar_tarif_beeline_items(toplam_tarif_beeline_models models) {
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
        ],
      ),
    ),
  );
}
