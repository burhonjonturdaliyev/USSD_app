import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:ussd_kodlari/uzmobile_models/daqiqalar_model.dart';

// ignore: camel_case_types
class Daqiqalar_tp extends StatelessWidget {
  const Daqiqalar_tp({super.key});
  static List<daqiqalar_model> model = [
    daqiqalar_model(
        name: "300 DAQIQA",
        money: "10000 so'm",
        time: "300 daqiqa",
        deadline: "30 kun",
        code: "*111*2*3*2#"),
    daqiqalar_model(
        name: "600 DAQIQA",
        money: "16000 so'm",
        time: "600 daqiqa",
        deadline: "30 kun",
        code: "*111*2*3*3#"),
    daqiqalar_model(
        name: "1200 DAQIQA",
        money: "24000 so'm",
        time: "1200 daqiqa",
        deadline: "30 kun",
        code: "*111*2*3*4#")
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: model.length,
      itemBuilder: (context, index) => daqiqalar_items(model[index]),
    );
  }
}

// ignore: non_constant_identifier_names
Widget daqiqalar_items(daqiqalar_model model) {
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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                // ignore: prefer_const_constructors
                Icon(
                  Icons.save_alt_outlined,
                  color: Colors.blue,
                ),
                // ignore: prefer_const_constructors
                Text(
                  model.name,
                  // ignore: prefer_const_constructors
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                // ignore: prefer_const_constructors
                Icon(
                  Icons.show_chart_outlined,
                  color: Colors.blue,
                )
              ],
            ),
          ),
          // ignore: prefer_const_constructors
          Divider(
            thickness: 1,
            color: Colors.grey,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  // ignore: prefer_const_literals_to_create_immutables, prefer_const_constructors
                  children: [Text("Narxi: ${model.money}")],
                ),
                Row(
                  // ignore: prefer_const_literals_to_create_immutables, prefer_const_constructors
                  children: [Text("Berilgan daqiqalar soni: ${model.time}")],
                ),
                Row(
                  // ignore: prefer_const_literals_to_create_immutables, prefer_const_constructors
                  children: [Text("Amal qilish muddati: ${model.deadline}")],
                ),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                    onPressed: () {
                      FlutterPhoneDirectCaller.callNumber(model.code);
                    },
                    child: const Text("Faollashtirish uchun"))
              ],
            ),
          )
        ],
      ),
    ),
  );
}
