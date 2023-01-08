import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:ussd_kodlari/beeline_full/Operator_xizmatlari/internet_toplamlari/models/oy_internet_toplamlari_beeline_models.dart';

// ignore: camel_case_types
class oy_internet_toplamlari_beeline extends StatelessWidget {
  const oy_internet_toplamlari_beeline({super.key});

  static List<oy_internet_toplamlari_beeline_models> models = [
    oy_internet_toplamlari_beeline_models(
      name: "1000 Mb",
      narxi: "10000",
      internet: "1000",
      muddati: "30",
      code: "*1*01#",
    ),
    oy_internet_toplamlari_beeline_models(
      name: "5000 Mb",
      narxi: "25000",
      internet: "5000",
      muddati: "30",
      code: "*1*05#",
    ),
    oy_internet_toplamlari_beeline_models(
      name: "10000 Mb",
      narxi: "40000",
      internet: "10000",
      muddati: "30",
      code: "*1*10#",
    ),
    oy_internet_toplamlari_beeline_models(
      name: "20000 Mb",
      narxi: "60000",
      internet: "20000",
      muddati: "30",
      code: "*1*20#",
    ),
    oy_internet_toplamlari_beeline_models(
      name: "30000 Mb",
      narxi: "75000",
      internet: "30000",
      muddati: "30",
      code: "*1*30#",
    ),
    oy_internet_toplamlari_beeline_models(
      name: "50000 Mb",
      narxi: "90000",
      internet: "50000",
      muddati: "30",
      code: "*1*50#",
    ),
    oy_internet_toplamlari_beeline_models(
      name: "75000 Mb",
      narxi: "110000",
      internet: "75000",
      muddati: "30",
      code: "*1*75#",
    ),
    oy_internet_toplamlari_beeline_models(
      name: "\"4G OY\"",
      narxi: "50000",
      internet: "25000",
      muddati: "30",
      code: "*110*59#",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: models.length,
        itemBuilder: (context, index) {
          return oylik_internet_toplamlari_beeline_items(models[index]);
        });
  }
}

// ignore: non_constant_identifier_names
Widget oylik_internet_toplamlari_beeline_items(
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
