// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:ussd_kodlari/Mobiuz_full/Operator%20xizmatlari/internet/models/Onnet_models.dart';

// ignore: camel_case_types
class OnNet_mobiuz extends StatelessWidget {
  const OnNet_mobiuz({super.key});

  static List<Onnet_models> models = [
    Onnet_models(
      "300 Mb",
      "8000",
      "7200",
      "1 oy",
      "*202*300#",
      "*202*0#",
    ),
    Onnet_models(
      "500 Mb",
      "9000",
      "8100",
      "1 oy",
      "*202*500#",
      "*202*0#",
    ),
    Onnet_models(
      "1000 Mb",
      "11000",
      "9900",
      "1 oy",
      "*202*1000#",
      "*202*0#",
    ),
    Onnet_models(
      "2000 Mb",
      "17000",
      "15300",
      "1 oy",
      "*202*2000#",
      "*202*0#",
    ),
    Onnet_models(
      "3000 Mb",
      "25000",
      "22500",
      "1 oy",
      "*202*3000#",
      "*202*0#",
    ),
    Onnet_models(
      "5000 Mb",
      "33000",
      "29700",
      "1 oy",
      "*202*5000#",
      "*202*0#",
    ),
    Onnet_models(
      "10000 Mb",
      "50000",
      "45000",
      "1 oy",
      "*202*10000#",
      "*202*0#",
    ),
    Onnet_models(
      "20000 Mb",
      "55000",
      "49500",
      "1 oy",
      "*202*20000#",
      "*202*0#",
    ),
    Onnet_models(
      "30000 Mb",
      "65000",
      "58500",
      "1 oy",
      "*202*30000#",
      "*202*0#",
    ),
    Onnet_models(
      "50000 Mb",
      "75000",
      "67500",
      "1 oy",
      "*202*50000#",
      "*202*0#",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: models.length,
        itemBuilder: (context, index) {
          return OnNet_items(models[index]);
        });
  }
}

// ignore: non_constant_identifier_names
Widget OnNet_items(Onnet_models models) {
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
                  children: [Text("Narxi: ${models.narxi} so'm")],
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Expanded(
                        child: Text("Amal qilish muddati: ${models.muddati}")),
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
                          "(2-oy va keyingi oylar uchun narxi: ${models.limit_money} so'm)"),
                    )
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
                            "Trafik qoldig'ini tekshirish uchun: *202# USSD-buyrug'ini terish kerak yoki 616202 raqamiga 3 sonini SMS tarzida yuborish kerak"))
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
                            "Ulanish imkoniyati:\nBarcha tarif rejalari, jismoniy shaxslar. Yuridik shaxslar to'plamlarni yozma ariza asosida ulashishlari va bekor qilishlari mumkin"))
                  ],
                )
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
