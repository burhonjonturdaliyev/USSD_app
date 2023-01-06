import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:ussd_kodlari/Mobiuz_full/Operator%20xizmatlari/Qoshimcha%20xizmatlar/models/xizmatlar_mobiuz_models.dart';

// ignore: camel_case_types
class Xizmatlar_mobiuz extends StatelessWidget {
  const Xizmatlar_mobiuz({super.key});
  static List<Xizmatlar_mobiuz_models> models = [
    Xizmatlar_mobiuz_models(
      name: "4G LTE",
      info: "Xolatni tekshirish *222#",
      activate: "*222*1#",
      deactivate: "*222*0#",
    ),
    Xizmatlar_mobiuz_models(
      name: "Sizga qo'ng'iroq qilishdi",
      info: "Birinchi oy: 0 so'm\n\nIkkinchi oy: 100 so'm",
      activate: "*111*0131#",
      deactivate: "*111*0130#",
    ),
    Xizmatlar_mobiuz_models(
      name: "\"Ojidanie\" xizmati",
      info: "Qo'ng'iroq vaqtida boshqa yo'nalishdan qo'ng'iroqlar qabul qilish",
      activate: "*43#",
      deactivate: "#43#",
    ),
    Xizmatlar_mobiuz_models(
      name: "Chiquvchiga taqiq",
      info: "Chiquvchi qo'ng'iroqlarni taqiqlash",
      activate: "*33*0000#",
      deactivate: "#33*0000##",
    ),
    Xizmatlar_mobiuz_models(
      name: "Kiruvchi qo'ng'iroqlarga taqiq",
      info: "Kiruvchi qo'n'giroq va sms larga taqiq",
      activate: "*35*0000#",
      deactivate: "#35*0000#",
    ),
    Xizmatlar_mobiuz_models(
      name: "\"GOOD OK\" xizmati",
      info: "Gudok o'rniga musiqa qo'yish xizmati",
      activate: "*111*0141#",
      deactivate: "*111*0140#",
    ),
    Xizmatlar_mobiuz_models(
      name: "Pul o'tkazish",
      info: "*112*99897XXXXXXX*Summa# chaqiruvchi",
      activate: "*111*0151#",
      deactivate: "*111*0151#",
    ),
    Xizmatlar_mobiuz_models(
      name: "ANTIAON",
      info: "Maxfiy raqam (sikritiy nomer) qo'ng'iroqlarni raqamini ko'rish",
      activate: "*111*0101#",
      deactivate: "*111*0100#",
    ),
    Xizmatlar_mobiuz_models(
      name: "Konferensiya aloqa",
      info:
          "Konferensiya aloqa rejimida bir vaqtda bir nechta suhbatdoshlar o'rtasida suhbat tashkil qilish imkonini beradi",
      activate: "*111*0061#",
      deactivate: "*111*0060#",
    ),
    Xizmatlar_mobiuz_models(
      name: "5G",
      info:
          "5G - internet ishlashini yuqori tezligi va signalni uzatishdagi eng kichik uzilishlar (atigi 1-2 ms) bilan farqlanuvchi beshinchi avlod aloqa standarti",
      activate: "*223*1#",
      deactivate: "*223*0#",
    ),
    Xizmatlar_mobiuz_models(
      name: "Mening yangi raqamim",
      info:
          "Mening yangi raqamim xizmati Mobiuz raqamini ulagan (Mobiuz tarmog'i ichida yoki O'zbekistonda mobil aloqa operatorini almashtirgan) abonentlarga muhim aloqa raqamlarini yo'qotmaslik imkonini beradi.Eski raqamga kimdir qo'ng'iroq qilganda Mening yangi raqamim xizmati yangi raqamga SMS-xabar yuborib, qo'ng'iroq qilgan odamning raqamini abonentga ma'lum qiladi, shuningdek qo'ng'iroq qilgan kishiga abonentning yangi raqamini SMS-xabar shaklida yuboradi.Xizmatni faollashtirish uchun:\n1-qadam\n*111*0131# USSD-so'rovini yuborib, Mobiuzdagi yangi raqamda “Sizga qo'ng'iroq qilishdi” xizmatini ulang (xizmat raqam olinayotgan vaqtda ulangan bo'ladi)\n2-qadam\nQuyidagi USSD-so'rovni yuboring: *120*eski raqam#. Bunda «eski raqam» - bu, abonentning 998 XX XXX XX XX shaklidagi avvalgi raqami.Bu xizmatdan faqat O'zbekistonning GSM operatorlari uchun foydalanish mumkin",
      activate: "*120*1#",
      deactivate: "*120*0#",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: models.length,
        itemBuilder: (context, index) {
          return xizmatlar_mobiuz_items(models[index]);
        });
  }
}

// ignore: non_constant_identifier_names
Widget xizmatlar_mobiuz_items(Xizmatlar_mobiuz_models models) {
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
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                )
              ],
            ),
          ),
          const Divider(
            thickness: 1,
            color: Colors.red,
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                  onPressed: () {
                    FlutterPhoneDirectCaller.callNumber(models.activate);
                  },
                  child: const Text("Faollashtish uchun")),
              ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.green),
                  onPressed: () {
                    FlutterPhoneDirectCaller.callNumber(models.deactivate);
                  },
                  child: const Text("O'chirish uchun")),
            ],
          ),
          const SizedBox(
            height: 10,
          )
        ],
      ),
    ),
  );
}
