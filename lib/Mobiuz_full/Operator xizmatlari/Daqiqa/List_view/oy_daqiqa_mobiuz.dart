import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:ussd_kodlari/Mobiuz_full/Operator%20xizmatlari/Daqiqa/models/oylik_daqiqa_models.dart';

// ignore: camel_case_types
class OyLik_daqiqa_mobiuz extends StatelessWidget {
  const OyLik_daqiqa_mobiuz({super.key});
  static List<Oylik_models_mobi_daqiqa> models = [
    Oylik_models_mobi_daqiqa(
      name: "60 Daqiqa",
      muddati: "30",
      narxi: "4000",
      code: "*103*60#",
    ),
    Oylik_models_mobi_daqiqa(
      name: "120 Daqiqa",
      muddati: "30",
      narxi: "7000",
      code: "*103*120#",
    ),
    Oylik_models_mobi_daqiqa(
      name: "180 Daqiqa",
      muddati: "30",
      narxi: "10000",
      code: "*103*180#",
    ),
    Oylik_models_mobi_daqiqa(
      name: "300 Daqiqa",
      muddati: "30",
      narxi: "16000",
      code: "*103*300#",
    ),
    Oylik_models_mobi_daqiqa(
      name: "900 Daqiqa",
      muddati: "30",
      narxi: "37000",
      code: "*103*900#",
    ),
    Oylik_models_mobi_daqiqa(
      name: "1200 Daqiqa",
      muddati: "30",
      narxi: "45000",
      code: "*103*1200#",
    ),
    Oylik_models_mobi_daqiqa(
      name: "1800 Daqiqa",
      muddati: "30",
      narxi: "62000",
      code: "*103*1800#",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: models.length,
        itemBuilder: (context, index) {
          return Oylik_mobi_items(models[index]);
        });
  }
}

// ignore: non_constant_identifier_names
Widget Oylik_mobi_items(Oylik_models_mobi_daqiqa models) {
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
                  children: [
                    Expanded(
                        child:
                            Text("Amal qilish muddati: ${models.muddati} kun"))
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
