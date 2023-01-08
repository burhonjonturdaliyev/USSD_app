import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:ussd_kodlari/beeline_full/Operator_xizmatlari/tarif_rejalari/models/oy_beeline_tarif_models.dart';

// ignore: camel_case_types
class kun_tarif_rejalari_beeline extends StatelessWidget {
  const kun_tarif_rejalari_beeline({super.key});
  static List<oy_tarif_tejalari_beeline_models> models = [
    oy_tarif_tejalari_beeline_models(
        name: "\"Kunlik\"",
        narxi: "600",
        daqiqa: "60",
        internet: "60",
        sms: "10",
        info: "",
        code: "*110*580#")
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: models.length,
        itemBuilder: (context, index) {
          return kun_tarif_rejalari_beeline_items(models[index]);
        });
  }
}

// ignore: non_constant_identifier_names
Widget kun_tarif_rejalari_beeline_items(
    oy_tarif_tejalari_beeline_models models) {
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
                  children: [
                    Expanded(
                        child:
                            Text("Abonent to'lovi oyiga: ${models.narxi} so'm"))
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                        child: Text(
                            "O'zbekiston bo'yicha chiquvchi: ${models.daqiqa} daqiqa"))
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                        child: Text(
                            "Mobil internet trafik: ${models.internet} Mb"))
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                        child:
                            Text("O'zbekiston bo'ylab SMS: ${models.sms} SMS"))
                  ],
                ),
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
