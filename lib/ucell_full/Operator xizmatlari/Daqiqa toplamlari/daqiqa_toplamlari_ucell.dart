import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:ussd_kodlari/ucell_full/Operator%20xizmatlari/Daqiqa%20toplamlari/models/daqiqa_toplamlari_ucell_models.dart';

// ignore: camel_case_types
class daqiqa_toplamlari_ucell extends StatelessWidget {
  const daqiqa_toplamlari_ucell({super.key});

  static List<daqiqa_toplamlari_ucell_models> models = [
    daqiqa_toplamlari_ucell_models(
        name: "200",
        narxi: "4000",
        daqiqa: "100 daqiqa + 100 daqiqa bonus",
        muddati: "30",
        activate: "*130#"),
    daqiqa_toplamlari_ucell_models(
        name: "600",
        narxi: "8000",
        daqiqa: "300 daqiqa + 300 daqiqa bonus",
        muddati: "30",
        activate: "*130#"),
    daqiqa_toplamlari_ucell_models(
        name: "1200",
        narxi: "12000",
        daqiqa: "600 daqiqa + 600 daqiqa bonus",
        muddati: "30",
        activate: "*130#"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Daqiqa to'plamlari",
            style: TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          elevation: 10,
          backgroundColor: const Color(0xff6b2d82),
        ),
        body: ListView.builder(
            itemCount: models.length,
            itemBuilder: (context, index) {
              return daqiqa_toplamlari_ucell_items(models[index]);
            }));
  }
}

// ignore: non_constant_identifier_names
Widget daqiqa_toplamlari_ucell_items(daqiqa_toplamlari_ucell_models models) {
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
                  "${models.name} DAQIQA",
                  style: const TextStyle(
                      color: Color(0xff6b2d82),
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                )
              ],
            ),
          ),
          const Divider(
            thickness: 1,
            color: Color(0xff6b2d82),
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
                        child: Text("O'zbekiston bo'yicha: ${models.daqiqa}"))
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
                  backgroundColor: const Color(0xff6b2d82)),
              onPressed: () {
                FlutterPhoneDirectCaller.callNumber(models.activate);
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
