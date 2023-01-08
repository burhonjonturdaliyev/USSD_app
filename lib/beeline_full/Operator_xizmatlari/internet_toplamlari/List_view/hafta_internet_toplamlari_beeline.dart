import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:ussd_kodlari/beeline_full/Operator_xizmatlari/internet_toplamlari/models/oy_internet_toplamlari_beeline_models.dart';

// ignore: camel_case_types
class hafta_internet_toplamlari_beeline extends StatelessWidget {
  const hafta_internet_toplamlari_beeline({super.key});

  static List<oy_internet_toplamlari_beeline_models> models = [
    oy_internet_toplamlari_beeline_models(
        name: "100",
        narxi: "6900",
        internet: "100",
        muddati: "7",
        code: "*110*0*18#"),
    oy_internet_toplamlari_beeline_models(
        name: "400",
        narxi: "11900",
        internet: "400",
        muddati: "7",
        code: "*110*0*19#"),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: models.length,
        itemBuilder: (context, index) {
          return hafta_internet_toplamlari_beeline_items(models[index]);
        });
  }
}

// ignore: non_constant_identifier_names
Widget hafta_internet_toplamlari_beeline_items(
    oy_internet_toplamlari_beeline_models models) {
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
                  " HAFTALIK ${models.name} MB",
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
                    Expanded(child: Text("To'plam narxi: ${models.narxi} so'm"))
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                        child: Text(
                            "Berilgan strafik hajmi: ${models.internet} Mb"))
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                        child:
                            Text("Amal qilish muddati: ${models.muddati} kun"))
                  ],
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
