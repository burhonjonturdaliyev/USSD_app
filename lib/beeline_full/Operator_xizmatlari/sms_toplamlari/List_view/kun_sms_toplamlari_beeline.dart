import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:ussd_kodlari/beeline_full/Operator_xizmatlari/sms_toplamlari/models/kun_sms_toplamlari_beeline_models.dart';

// ignore: camel_case_types
class kun_sms_toplamlari_beeline extends StatelessWidget {
  const kun_sms_toplamlari_beeline({super.key});

  static List<kun_sms_toplamlari_beeline_models> models = [
    kun_sms_toplamlari_beeline_models(
      name: "SMS NON-STOP",
      narxi: "1300",
      sms: "250",
      activate: "*110*151#",
      deactivate: "*110*150#",
    ),
    kun_sms_toplamlari_beeline_models(
      name: "20 SMS Paket",
      narxi: "500",
      sms: "20",
      activate: "*110*161#",
      deactivate: "*110*160#",
    ),
    kun_sms_toplamlari_beeline_models(
      name: "50 SMS Paket",
      narxi: "1000",
      sms: "50",
      activate: "*110*162#",
      deactivate: "*110*160#",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: models.length,
        itemBuilder: (context, index) {
          return kun_sms_toplamlari_beeline_items(models[index]);
        });
  }
}

// ignore: non_constant_identifier_names
Widget kun_sms_toplamlari_beeline_items(
    kun_sms_toplamlari_beeline_models models) {
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
                        child: Text(
                            "Kunlik abonent to'lovi: ${models.narxi} so'm"))
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                        child: Text("Berilgan SMS lar soni: ${models.sms} ta"))
                  ],
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
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
                    FlutterPhoneDirectCaller.callNumber(models.deactivate);
                  },
                  child: const Text("O'chirish uchun")),
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
