import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:ussd_kodlari/beeline_full/Operator_xizmatlari/internet_toplamlari/models/kun_internet_toplamlari_beeline_models.dart';

// ignore: camel_case_types
class kun_internet_toplamlari_beeline extends StatelessWidget {
  const kun_internet_toplamlari_beeline({super.key});

  static List<kun_internet_toplamlari_beeline_models> models = [
    kun_internet_toplamlari_beeline_models(
        name: "\"4G KUN\"",
        narxi: "10000",
        internet: "5000",
        muddati: "1",
        activate: "*110*58#",
        deactivate: "*110*1*13#"),
    kun_internet_toplamlari_beeline_models(
        name: "Kunlik 10 Mb",
        narxi: "900",
        internet: "10 Mb + 10 Mb TAS-IX",
        muddati: "1",
        activate: "*110*1*14#",
        deactivate: "*110*1*13#"),
    kun_internet_toplamlari_beeline_models(
        name: "Kunlik 20 Mb",
        narxi: "1500",
        internet: "20 Mb + 20 Mb TAS-IX",
        muddati: "1",
        activate: "*110*1*15#",
        deactivate: "*110*1*13#"),
    kun_internet_toplamlari_beeline_models(
        name: "Kunlik 30 Mb",
        narxi: "1900",
        internet: "30 Mb + 30 Mb TAS-IX",
        muddati: "1",
        activate: "*110*1*16#",
        deactivate: "*110*1*13#"),
    kun_internet_toplamlari_beeline_models(
        name: "Kunlik 150 Mb",
        narxi: "4900",
        internet: "150 Mb + 1500 Mb TAS-IX",
        muddati: "1",
        activate: "*110*1*17#",
        deactivate: "*110*1*13#"),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: models.length,
        itemBuilder: (context, index) {
          return kun_internet_toplamlari_beeline_items(models[index]);
        });
  }
}

// ignore: non_constant_identifier_names
Widget kun_internet_toplamlari_beeline_items(
    kun_internet_toplamlari_beeline_models models) {
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
                        child:
                            Text("Berilgan strafik hajmi: ${models.internet}"))
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                  onPressed: () {
                    FlutterPhoneDirectCaller.callNumber(models.deactivate);
                  },
                  child: const Text("O'chirish")),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xffffc904)),
                  onPressed: () {
                    FlutterPhoneDirectCaller.callNumber(models.activate);
                  },
                  child: const Text("Faollashtish uchun")),
              ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.green),
                  onPressed: () {
                    FlutterPhoneDirectCaller.callNumber("*113#");
                  },
                  child: const Text("Qoldiq")),
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
