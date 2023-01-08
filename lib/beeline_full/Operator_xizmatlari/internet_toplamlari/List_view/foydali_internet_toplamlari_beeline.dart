import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:ussd_kodlari/beeline_full/Operator_xizmatlari/internet_toplamlari/models/foydali_internet_toplamlari_beeline_models.dart';

// ignore: camel_case_types
class foydali_internet_toplamlari_beeline extends StatelessWidget {
  const foydali_internet_toplamlari_beeline({super.key});

  static List<foydali_internet_toplamlari_beeline_models> models = [
    foydali_internet_toplamlari_beeline_models(
      name: "200 daqiqa = 100 Mb",
      info:
          "Yechib olish: 200 daqiqa\nTaqdim etish: 100 Mb\nXizmat narxi: 4500 so'm\nAmal qilish muddati: 7 kun",
      code: "*200*1#",
    ),
    foydali_internet_toplamlari_beeline_models(
      name: "400 daqiqa = 200 Mb",
      info:
          "Yechib olish: 400 daqiqa\nTaqdim etish: 200 Mb\nXizmat narxi: 7000 so'm\nAmal qilish muddati: 7 kun",
      code: "*200*2#",
    ),
    foydali_internet_toplamlari_beeline_models(
      name: "*777*7*5#",
      info: "70 ballni 5 Mb ga almashish",
      code: "*777*7*5#",
    ),
    foydali_internet_toplamlari_beeline_models(
      name: "*777*7*10#",
      info: "130 ballni 10 Mb ga almashish",
      code: "*777*7*10#",
    ),
    foydali_internet_toplamlari_beeline_models(
      name: "*777*7*20#",
      info: "250 ballni 20 Mb ga almashish",
      code: "*777*7*20#",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: models.length,
        itemBuilder: (context, index) {
          return foydali_internet_toplamlari_beeline_items(models[index]);
        });
  }
}

// ignore: non_constant_identifier_names
Widget foydali_internet_toplamlari_beeline_items(
    foydali_internet_toplamlari_beeline_models models) {
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
