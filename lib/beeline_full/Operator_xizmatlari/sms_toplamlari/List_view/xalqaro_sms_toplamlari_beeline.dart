import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:ussd_kodlari/beeline_full/Operator_xizmatlari/sms_toplamlari/models/oy_sms_toplamlari_beeline_models.dart';

// ignore: camel_case_types
class xalqaro_sms_toplamlari_beeline extends StatelessWidget {
  const xalqaro_sms_toplamlari_beeline({super.key});
  static List<oy_sms_toplamlari_beeline_models> models = [
    oy_sms_toplamlari_beeline_models(
      name: "25",
      narxi: "5262,5",
      muddati: "30",
      code: "*110*041#",
    ),
    oy_sms_toplamlari_beeline_models(
      name: "50",
      narxi: "8420",
      muddati: "30",
      code: "*110*042#",
    ),
    oy_sms_toplamlari_beeline_models(
      name: "100",
      narxi: "12630",
      muddati: "30",
      code: "*110*043#",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: models.length,
        itemBuilder: (context, index) {
          return xalqaro_sms_toplamlari_items(models[index]);
        });
  }
}

// ignore: non_constant_identifier_names
Widget xalqaro_sms_toplamlari_items(oy_sms_toplamlari_beeline_models models) {
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
                  "${models.name} Xalqaro SMS Paket",
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
                    Expanded(child: Text("Ulanish narxi: ${models.narxi} so'm"))
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
