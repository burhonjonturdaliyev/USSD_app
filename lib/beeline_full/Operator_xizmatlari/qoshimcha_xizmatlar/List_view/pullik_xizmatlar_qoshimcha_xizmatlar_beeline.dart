import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:ussd_kodlari/beeline_full/Operator_xizmatlari/qoshimcha_xizmatlar/models/xizmatlar_qoshimcha_xizmatlar_beeline_models.dart';

// ignore: camel_case_types
class pullik_xizmatlar_qoshimcha_xizmatlar_beeline extends StatelessWidget {
  const pullik_xizmatlar_qoshimcha_xizmatlar_beeline({super.key});

  static List<xizmatlar_qoshimcha_xizmatlar_beeline_models> models = [
    xizmatlar_qoshimcha_xizmatlar_beeline_models(
      code: "*777*1#",
      info: "250 ball ni Mening musiqam xizmatiga 3 oy muddatga almashtirish",
    ),
    xizmatlar_qoshimcha_xizmatlar_beeline_models(
      code: "*777*2#",
      info: "400 ball ni Mening musiqam xizmatiga 6 oy muddatga almashtirish",
    ),
    xizmatlar_qoshimcha_xizmatlar_beeline_models(
      code: "*777*3#",
      info: "250 ball ni AntiON xizmatiga 3 oy muddatga almashtirish",
    ),
    xizmatlar_qoshimcha_xizmatlar_beeline_models(
      code: "*777*4#",
      info: "400 ball ni AntiON xizmatiga 6 oy muddatga almashtirish",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: models.length,
        itemBuilder: (context, index) {
          return pullik_xizmatlar_qoshimcha_xizmatlar_beeline_items(
              models[index]);
        });
  }
}

// ignore: non_constant_identifier_names
Widget pullik_xizmatlar_qoshimcha_xizmatlar_beeline_items(
    xizmatlar_qoshimcha_xizmatlar_beeline_models models) {
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
