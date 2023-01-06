import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';

import '../../uzmobile_models/foydali_malumot_models.dart';

// ignore: camel_case_types
class Foydali_Mobiuz extends StatelessWidget {
  static List<foydali_models> models = [
    foydali_models(name: "O't o'chirish xizmati", code: "101"),
    foydali_models(name: "Militsiya", code: "102"),
    foydali_models(name: "Tez yordam", code: "103"),
    foydali_models(name: "Gaz avariya xizmati", code: "104"),
    foydali_models(name: "Qutqaruv xizmati", code: "105"),
    foydali_models(name: "Prezident virtual qabulxonasi", code: "1000"),
    foydali_models(name: "Interaktive davlat xizmatlari portali", code: "1060"),
    foydali_models(name: "Xalq talimi vazirligi", code: "1006"),
    foydali_models(name: "Adliya vazirligi", code: "1008"),
    foydali_models(name: "Bosh prokratura", code: "1007"),
    foydali_models(name: "Temir yo'l ma'lumotxonasi", code: "1005"),
    foydali_models(name: "Apteka ma'lumotnomasi", code: "1142"),
    foydali_models(name: "Aloqa operatorlari kodlari", code: "1192"),
    foydali_models(name: "Xotin-qizlar qo'mitasi", code: "1146"),
    foydali_models(name: "Tosh shahar trans xizmat", code: "1062"),
  ];

  const Foydali_Mobiuz({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text("Foydali malumotlar"),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: models.length,
        itemBuilder: (context, index) {
          return foydali_malumot(models[index]);
        },
      ),
    );
  }
}

// ignore: non_constant_identifier_names
Widget foydali_malumot(foydali_models models) {
  return SafeArea(
    minimum: const EdgeInsets.only(bottom: 1),
    child: Padding(
      padding: const EdgeInsets.all(6.0),
      child: GestureDetector(
        onTap: () {
          FlutterPhoneDirectCaller.callNumber(models.code);
        },
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Colors.white,
              border: Border.all(width: 1, color: Colors.white24),
              // ignore: prefer_const_literals_to_create_immutables
              boxShadow: [
                const BoxShadow(
                    color: Colors.black12,
                    blurRadius: 2,
                    spreadRadius: 1,
                    offset: Offset(0, 0))
              ]),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  models.name,
                  style: const TextStyle(color: Colors.red, fontSize: 16),
                ),
                Text(
                  models.code,
                  style: TextStyle(color: Colors.red[100]),
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
