// ignore_for_file: non_constant_identifier_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:ussd_kodlari/uzmobile_models/imtiyozli.dart';

class Imtiyozli extends StatelessWidget {
  const Imtiyozli({super.key});
  static List<extra_imtiyoz> imtiyoz = [
    extra_imtiyoz(
      name: "TA'LIM",
      money: "Oyiga 34900 so'm",
      time: "300 daqiqa",
      addtime: "1000 daqiqa",
      internet: "8000MB",
      sms: "500 sms",
      content:
          "\"TA'LIM\" tarif rejasi faqat oliy va o'rta maxsus o'quv yurtlari (institutlar, universitetlar, litseylar, kollejlar) talabalari va o'qituvchilari uchun mo'ljallangan. Ulanishda talabalar talabalik guvohnomasini va o'qituvchilar esa guvohnomalarini taqdim etishlari kerak.",
    ),
    extra_imtiyoz(
        name: "YOSHLAR",
        money: "Oyiga 5000 so'm",
        time: "Barcha chiquvchi qo'ng'iroqlar 25 so'm",
        addtime: "Mavjud emas",
        internet: "1 Mb internet trafik narxi 25 so'm",
        sms: "1 ta chiqubchi sms narxi 25 so'm",
        content: "Tarif rejasiga boshqa tarif rejalaridan o'tish mumkin emas"),
    extra_imtiyoz(
        name: "BOLAJON",
        money: "Oyiga 18000 so'm",
        time: "200 daqiqa",
        addtime: "Mavjud emas",
        internet: "2000 Mb",
        sms: "200 sms",
        content:
            "* Trafik tarifikatsiyasi APN ziyonet.uzmobile.uz\n* Tarif bolalar uchun mo'ljallangan, ushbu tarifdagi raqamlar ota-onalardan biriga ulanadi.")
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: imtiyoz.length,
      itemBuilder: (BuildContext context, int index) {
        return imtiyozli_items(imtiyoz[index]);
      },
    );
  }
}

Widget imtiyozli_items(extra_imtiyoz imtiyoz) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          // ignore: prefer_const_literals_to_create_immutables
          boxShadow: [
            BoxShadow(
                color: Colors.black,
                spreadRadius: -5,
                blurRadius: 10,
                offset: const Offset(0, 1))
          ],
          border: Border.all(width: 1, color: Colors.white30)),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Text(
                  imtiyoz.name,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
          Divider(
            thickness: 3,
            color: Colors.grey,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(child: Text("Abonent to'lovi: ${imtiyoz.money}"))
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                        child: Text("O'zbekiston bo'yicha: ${imtiyoz.time}"))
                  ],
                ),
                Row(
                  children: [
                    Expanded(child: Text("Tarmoq ichida: ${imtiyoz.addtime}"))
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                        child: Text("Mobile internet: ${imtiyoz.internet}"))
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                        child: Text("O'zbekiston bo'yicha: ${imtiyoz.sms}"))
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [Expanded(child: Text(imtiyoz.content))],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Expanded(
                      child: Text(
                          "Ushbu xizmatni faqatgina rasmiy ofislardan ulatish mumkin"),
                    )
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 5,
          )
        ],
      ),
    ),
  );
}
