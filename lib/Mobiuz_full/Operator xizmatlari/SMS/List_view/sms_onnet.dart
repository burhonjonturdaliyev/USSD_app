import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:ussd_kodlari/Mobiuz_full/Operator%20xizmatlari/SMS/models/sms_onnet.dart';

// ignore: camel_case_types
class SMS_OnNet_mobiuz extends StatelessWidget {
  const SMS_OnNet_mobiuz({super.key});
  static List<OnNet_sms_mobiuz_models> models = [
    OnNet_sms_mobiuz_models(
        name: "ONNET", narxi: "450", limit_money: "492,14", code: "*204#")
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: models.length,
        itemBuilder: (context, index) {
          return OnNet_sms_items(models[index]);
        });
  }
}

// ignore: non_constant_identifier_names
Widget OnNet_sms_items(OnNet_sms_mobiuz_models models) {
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
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Expanded(
                        child: Text(
                            "TUlash narxi - ${models.narxi} so'm (bir martalik)"))
                  ],
                ),
                Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Expanded(
                        child: Text(
                            "Kunlik to'lov - ${models.narxi} so'm (xizmat ulangan kuni abonent to'lovi olinmaydi)"))
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
                            "Shartlar:\nXalqaro SMS-xabarlar va kontent-provayderlar xizmatlarini boshqarish uchun SMS-so'rovlar ular uchun belgilangan tariflar bo'yicha narxlanadi"))
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Expanded(
                        child: Text(
                            "Xizmat yoqilgan paytda abonent balansida kamida ${models.limit_money} so'm bo'lsagina xizmatni faollashtirish mumkin"))
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
                            "Xizmat abonent O'zbekiston hududida UMS MChJ tarmog'i bo'lgandagina hamda faqat O'zbekiston mobil operatorlari abonentlariga yuborish uchun amal qiladi"))
                  ],
                ),
                Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const Expanded(
                        child: Text(
                            "Xizmatning amal qilish muddati-cheklanmagan, u o'chirilmaguncha ishlaydi\nSMS-to'plam raqam bandlangan/bandlanmaganidan qat'iy nazar beriladi\nSMS-to'plam har kuni beriladi va keyingi kunga o'tkazilmaydi\nKunlik abonent to'lovi faqat musbat balansda yechib qolinadi"))
                  ],
                ),
                Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const Expanded(
                      child: Text(
                          "FAOLLASHTIRISH\nSMS sarflanish tartibi:\nTarif rejasi bo'yicha SMS-to'plam > SMS-OnNet xizmati bo'yicha SMS > SMS-to'plam"),
                    )
                  ],
                )
              ],
            ),
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
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
