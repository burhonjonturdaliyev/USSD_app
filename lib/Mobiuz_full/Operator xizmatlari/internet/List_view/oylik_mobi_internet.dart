import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:ussd_kodlari/Mobiuz_full/Operator%20xizmatlari/internet/models/oylik_models.dart';

// ignore: camel_case_types
class Oylik_internet_mobi extends StatelessWidget {
  const Oylik_internet_mobi({super.key});
  static List<Oylik_models_mobi_internet> models = [
    Oylik_models_mobi_internet(
        name: "300 MB", muddati: "30", narxi: "8000", code: "*102*300#"),
    Oylik_models_mobi_internet(
        name: "500 MB", muddati: "30", narxi: "9000", code: "*102*500#"),
    Oylik_models_mobi_internet(
        name: "1000 MB", muddati: "30", narxi: "11000", code: "*102*1000#"),
    Oylik_models_mobi_internet(
        name: "2000 MB", muddati: "30", narxi: "17000", code: "*102*2000#"),
    Oylik_models_mobi_internet(
        name: "3000 MB", muddati: "30", narxi: "25000", code: "*102*3000#"),
    Oylik_models_mobi_internet(
        name: "5000 MB", muddati: "30", narxi: "33000", code: "*102*5000#"),
    Oylik_models_mobi_internet(
        name: "10000 MB", muddati: "30", narxi: "50000", code: "*102*10000#"),
    Oylik_models_mobi_internet(
        name: "20000 MB", muddati: "30", narxi: "55000", code: "*102*20000#"),
    Oylik_models_mobi_internet(
        name: "30000 MB", muddati: "30", narxi: "65000", code: "*102*30000#"),
    Oylik_models_mobi_internet(
        name: "50000 MB", muddati: "30", narxi: "75000", code: "*102*50000#"),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: models.length,
        itemBuilder: (context, index) {
          return Oylik_internet_items(models[index]);
        });
  }
}

// ignore: non_constant_identifier_names
Widget Oylik_internet_items(Oylik_models_mobi_internet models) {
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
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                )
              ],
            ),
          ),
          const Divider(
            thickness: 1,
            color: Colors.red,
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
                            Text("Amal qilish muddati: ${models.muddati} kun"))
                  ],
                ),
                Row(
                  children: [Text("Narxi: ${models.narxi} so'm")],
                )
              ],
            ),
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
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
