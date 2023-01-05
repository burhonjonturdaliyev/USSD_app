import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:ussd_kodlari/uzmobile_models/daqiqalar_model.dart';

// ignore: camel_case_types
class Konstruktor_daqiqa extends StatelessWidget {
  const Konstruktor_daqiqa({super.key});
  static List<daqiqalar_model> model = [
    daqiqalar_model(
        name: "900 DAQIQA",
        money: "37890 so'm",
        time: "900 daqiqa",
        deadline: "30 kun",
        code: "*999*1*3*5#"),
    daqiqalar_model(
        name: "1500 DAQIQA",
        money: "58940 so'm",
        time: "1500 daqiqa",
        deadline: "30 kun",
        code: "*999*1*3*6#"),
    daqiqalar_model(
        name: "2000 DAQIQA",
        money: "67360 so'm",
        time: "2000 daqiqa",
        deadline: "30 kun",
        code: "*999*1*3*7#"),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: model.length,
      itemBuilder: (context, index) => konstruktor_daqiqa_items(model[index]),
    );
  }
}

// ignore: non_constant_identifier_names
Widget konstruktor_daqiqa_items(daqiqalar_model model) {
  // ignore: avoid_unnecessary_containers
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          // ignore: prefer_const_literals_to_create_immutables
          boxShadow: [
            // ignore: prefer_const_constructors
            BoxShadow(
                color: Colors.black,
                spreadRadius: -5,
                blurRadius: 10,
                offset: const Offset(0, 1))
          ],
          border: Border.all(width: 1, color: Colors.white30)),
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
                  model.name,
                  style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue),
                ),
              ],
            ),
          ),
          // ignore: prefer_const_constructors
          Divider(
            thickness: 1,
            color: Colors.blue,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  children: [Text("To'plam narxi: ${model.money}")],
                ),
                Row(
                  children: [Text("Berilgan daqiqa soni: ${model.time}")],
                ),
                Row(
                  children: [Text("Amal qilish muddati: ${model.deadline}")],
                )
              ],
            ),
          ),
          // ignore: prefer_const_constructors
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
              onPressed: () {
                FlutterPhoneDirectCaller.callNumber(model.code);
              },
              child: const Text("Faollashtirish uchun")),
          const SizedBox(
            height: 10,
          )
        ],
      ),
    ),
  );
}
