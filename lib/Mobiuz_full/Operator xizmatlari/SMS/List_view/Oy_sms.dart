// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:ussd_kodlari/Mobiuz_full/Operator%20xizmatlari/SMS/models/sms_oy.dart';

// ignore: camel_case_types
class Oy_SMS_mobiuz extends StatelessWidget {
  const Oy_SMS_mobiuz({super.key});

  static List<Oylik_mobi_models> models = [
    Oylik_mobi_models(name: "SMS 100", narxi: "4500", code: "*104#"),
    Oylik_mobi_models(name: "SMS 300", narxi: "10500", code: "*104#")
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: models.length,
        itemBuilder: (context, index) {
          return Oy_sms_items(models[index]);
        });
  }
}

// ignore: non_constant_identifier_names
Widget Oy_sms_items(Oylik_mobi_models models) {
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
                    const Expanded(
                        child: Text(
                            "To'plamning qiymati xizmat faollashtirilganda yechib olinadi. Faollashtirilgan SMS-to'plamlar da qolgan xabarlar sonini bilish uchun *104# USSD-buyrug'ini yoki 616018 raqamiga 3 soni bilan SMS-xabar jo'natish zarur"))
                  ],
                ),
                Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const Expanded(
                        child: Text(
                            "Izohlar:\nXalqaro chiquvchi SMS-xabarlar va kontent-provayder xizmatiga SMS-so'rovlar ularga o'rnatilgan tariflar bo'yicha narxlanadi"))
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
                            "SMS-xabarlarning tegishli hajmidan to'plam faollashtirilgan kundan boshlab, abonent bu vaqtda blokirovkada bo'lgan muddatdan qat'iy nazar, 30 kalendar kun muddati mobaynida foydalanish mumkin"))
                  ],
                ),
                Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const Expanded(
                        child: Text(
                            "SMS-to'plamlarga to'plam faollashtirilganidan so'ng abonent hisobida 42,10 so'mdan kam bo'lmagan mablag' bo'lishi sharti bilan ulanish mumkin"))
                  ],
                ),
                Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const Expanded(
                        child: Text(
                            "Xarid qilingan to'plamlar o'rtasidagi vaqt oralig'i kamida 10 daqiqa bo'lishi zarur."))
                  ],
                ),
                Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const Expanded(
                        child: Text(
                            "Xarid qilingan barcha to'plamlarning hajmi jamlanadi, foydalanish muddati esa oxirgi sotib olingan to'plamning muddati tugaguniga va sotib olingan kundan boshlab 30 kunga qadar cho'ziladi. Xizmat - jismoniy va yuridik shaxs boʻlgan barcha abonentlarga, barcha tarif rejalarda amal qiladi"))
                  ],
                ),
                Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const Expanded(
                        child: Text(
                            "To'plamlar faqat abonent O'zbekiston hududidagi UMS MChJ tarmog'ida bo'lgan paytda va O'zbekiston mobil operatorlariga yuborish uchun amal qiladi"))
                  ],
                ),
                Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const Expanded(
                        child: Text(
                            "Narxlar barcha soliqlarni hisobga olgan holda ko'rsatilgan"))
                  ],
                ),
                Row(
                  children: [Text("Narxi: ${models.narxi} so'm")],
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
