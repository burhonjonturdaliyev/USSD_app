import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:ussd_kodlari/beeline_full/Operator_xizmatlari/sms_toplamlari/models/foydali_sms_toplamlari_beeline_models.dart';

// ignore: camel_case_types
class foydali_sms_toplamlari_beeline extends StatelessWidget {
  const foydali_sms_toplamlari_beeline({super.key});
  static List<foydali_sms_toplamlari_beeline_models> models = [
    foydali_sms_toplamlari_beeline_models(
      info: "70 ball ni 30 ta mahalliy SMS paketga almashtirish",
      code: "*777*2*30#",
    ),
    foydali_sms_toplamlari_beeline_models(
      info: "130 ball ni 60 ta mahalliy SMS paketga almashtirish",
      code: "*777*2*60#",
    ),
    foydali_sms_toplamlari_beeline_models(
      info: "250 ball ni 120 ta mahalliy SMS paketga almashtirish",
      code: "*777*2*120#",
    ),
    foydali_sms_toplamlari_beeline_models(
      info: "70 ball ni 5 ta xalqaro SMS paketga almashtirish",
      code: "*777*3*5#",
    ),
    foydali_sms_toplamlari_beeline_models(
      info: "130 ball ni 10 ta xalqaro SMS paketga almashtirish",
      code: "*777*3*10#",
    ),
    foydali_sms_toplamlari_beeline_models(
      info: "250 ball ni 20 ta xalqaro SMS paketga almashtirish",
      code: "*777*3*20#",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: models.length,
        itemBuilder: (context, index) {
          return foydali_sms_toplamlari_beeline_items(models[index]);
        });
  }
}

// ignore: non_constant_identifier_names
Widget foydali_sms_toplamlari_beeline_items(
    foydali_sms_toplamlari_beeline_models models) {
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
                  models.code,
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
