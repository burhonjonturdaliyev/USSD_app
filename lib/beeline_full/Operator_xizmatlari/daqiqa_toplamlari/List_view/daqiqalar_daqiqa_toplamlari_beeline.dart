import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:ussd_kodlari/beeline_full/Operator_xizmatlari/daqiqa_toplamlari/models/daqiqalar_daqiqa_toplamlari_beeline_models.dart';

// ignore: camel_case_types
class daqiqalar_daqiqa_toplamlari_beeline extends StatelessWidget {
  const daqiqalar_daqiqa_toplamlari_beeline({super.key});
  static List<daqiqalar_daqiqa_toplamlari_beeline_models> models = [
    daqiqalar_daqiqa_toplamlari_beeline_models(
      name: "200 DAQIQA",
      info: "To'plam narxi: 10000 so'm\nAmal qilish muddati: 30 kun",
      code: "*110*500#",
    ),
    daqiqalar_daqiqa_toplamlari_beeline_models(
      name: "400 DAQIQA",
      info: "To'plam narxi: 18000 so'm\nAmal qilish muddati: 30 kun",
      code: "*110*501#",
    ),
    daqiqalar_daqiqa_toplamlari_beeline_models(
      name: "600 DAQIQA",
      info: "To'plam narxi: 25000 so'm\nAmal qilish muddati: 30 kun",
      code: "*110*502#",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: models.length,
      itemBuilder: (context, index) =>
          daqiqalar_daqiqa_toplamlari_beeline_items(models[index]),
    );
  }
}

// ignore: non_constant_identifier_names
Widget daqiqalar_daqiqa_toplamlari_beeline_items(
    daqiqalar_daqiqa_toplamlari_beeline_models models) {
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
