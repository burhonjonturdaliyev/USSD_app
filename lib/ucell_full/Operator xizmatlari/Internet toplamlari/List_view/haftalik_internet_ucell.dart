import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:ussd_kodlari/ucell_full/Operator%20xizmatlari/Internet%20toplamlari/models/oylik_internet_ucell_models.dart';

// ignore: camel_case_types
class haftalik_internet_ucell extends StatelessWidget {
  const haftalik_internet_ucell({super.key});
  static List<oylik_internet_ucell_models> models = [
    oylik_internet_ucell_models(
      name: "80",
      narxi: "8420",
      internet: "80",
      muddati: "7",
      activate: "*555*2*1*1*23631#",
      deactivate: "*555*2*10*2*1#",
    ),
    oylik_internet_ucell_models(
      name: "160",
      narxi: "12631",
      internet: "160",
      muddati: "7",
      activate: "*555*2**1*23631#",
      deactivate: "*555*2*10*2*1#",
    ),
    oylik_internet_ucell_models(
      name: "320",
      narxi: "16841",
      internet: "320",
      muddati: "7",
      activate: "*555*2*3*1*23631#",
      deactivate: "*555*2*10*2*1#",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: models.length,
        itemBuilder: (context, index) {
          return haftalik_internet_ucell_items(models[index]);
        });
  }
}

// ignore: non_constant_identifier_names
Widget haftalik_internet_ucell_items(oylik_internet_ucell_models models) {
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
                  "Haftalik ${models.name} MB",
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
                        child: Text(
                            "Berilgan trafik hajmi: ${models.internet} Mb"))
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
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff6b2d82)),
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
