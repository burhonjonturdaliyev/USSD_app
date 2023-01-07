import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:ussd_kodlari/ucell_full/Operator%20xizmatlari/SMS%20toplamlari/models/oylik_sms_ucell.dart';

// ignore: camel_case_types
class xalqaro_sms_ucell extends StatelessWidget {
  const xalqaro_sms_ucell({super.key});

  static List<oylik_sms_ucell_models> models = [
    oylik_sms_ucell_models(
      name: "15",
      narxi: "4210",
      sms: "15",
      muddati: "30",
      activate: "*789*1#",
    ),
    oylik_sms_ucell_models(
      name: "35",
      narxi: "7999",
      sms: "35",
      muddati: "30",
      activate: "*789*2#",
    ),
    oylik_sms_ucell_models(
      name: "60",
      narxi: "11367",
      sms: "60",
      muddati: "30",
      activate: "*789*3#",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: models.length,
        itemBuilder: (context, index) {
          return xalqaro_sms_ucell_items(models[index]);
        });
  }
}

// ignore: non_constant_identifier_names
Widget xalqaro_sms_ucell_items(oylik_sms_ucell_models models) {
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
                  "Xalqaro SMS ${models.name}",
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
                        child: Text("Berilgan SMS lar soni: ${models.sms} SMS"))
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
