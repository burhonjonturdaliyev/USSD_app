import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:ussd_kodlari/uzmobile_models/non_stop.dart';

// ignore: camel_case_types
class Non_stopuz extends StatelessWidget {
  const Non_stopuz({super.key});
  static List<non_stop> stop = [
    non_stop(
        name: "3000 MB",
        money:
            "24000 so'm ikkinchi va keyin oylardagi narxi 1600 so'mga kamayadi",
        hajmi: "3000 MB",
        deadline: "30 kun",
        activate: "*111*2*14*1*1#",
        deactivate: "*111*1*14*1*2#"),
    non_stop(
        name: "5000 MB",
        money:
            "32000 so'm ikkinchi va keyingi oyning oylardagi narxi 28800 so'm",
        hajmi: "5000 MB",
        deadline: "30 kun",
        activate: "*111*2*14*2*1#",
        deactivate: "*111*1*14*2*2#"),
    non_stop(
        name: "8000 MB",
        money: "41000 so'm ikkinchi va keyin oylardagi narxi 36900 so'm",
        hajmi: "8000 MB",
        deadline: "30 kun",
        activate: "*111*1*14*3*1#",
        deactivate: "*111*1*14*3*2#"),
    non_stop(
        name: "12000 MB",
        money: "50000 so'm ikkinchi va keyingi oylardagi narxi 45000 so'm",
        hajmi: "12000 MB",
        deadline: "30 kun",
        activate: "*111*1*14*4*1#",
        deactivate: "*111*1*14*4*2#"),
    non_stop(
        name: "20000 MB",
        money: "65000 so'm ikkinchi va keyingi oylardagi narxi 58500 so'm",
        hajmi: "20000 MB",
        deadline: "30 kun",
        activate: "*111*1*14*5*1#",
        deactivate: "*111*1*14*5*2#"),
    non_stop(
        name: "30000 MB",
        money: "75000 so'm ikkinchi va keyingi oylardagi narxi 67500 so'm",
        hajmi: "30000 MB",
        deadline: "30 kun",
        activate: "*111*1*14*6*1#",
        deactivate: "*111*1*14*6*2#"),
    non_stop(
        name: "50000 MB",
        money: "85000 so'm ikkinchi va keyingi oylardagi narxi 76500 so'm",
        hajmi: "50000 MB",
        deadline: "30 kun",
        activate: "*111*1*14*7*1#",
        deactivate: "*111*1*14*7*2#"),
    non_stop(
        name: "16000 MB",
        money: "60000 so'm ikkinchi va keyingi oylardagi narxi 54000 so'm",
        hajmi: "16000 MB",
        deadline: "30 kun",
        activate: "*111*1*14*9*1#",
        deactivate: "*111*1*14*9*2#")
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: stop.length,
      itemBuilder: (context, index) => non_stop_items(stop[index]),
    );
  }
}

// ignore: non_constant_identifier_names
Widget non_stop_items(non_stop stop) {
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
                  stop.name,
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          const Divider(
            thickness: 1,
            color: Colors.grey,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(child: Text("To'plam narxi ${stop.money}"))
                  ],
                ),
                Row(
                  children: [Text("Berilgan trafik hajmi: ${stop.hajmi}")],
                ),
                Row(
                  children: [Text("Amal qilish muddati: ${stop.deadline}")],
                )
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  // ignore: prefer_const_constructors
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                  onPressed: (() {
                    FlutterPhoneDirectCaller.callNumber(stop.activate);
                  }),
                  child: const Text("Faollashtirish uchun")),
              const SizedBox(
                height: 5,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                  onPressed: (() {
                    FlutterPhoneDirectCaller.callNumber(stop.deactivate);
                  }),
                  child: const Text("O'chirish uchun")),
              // ignore: prefer_const_constructors
              SizedBox(
                height: 10,
              )
            ],
          ),
          // ignore: prefer_const_constructors
          SizedBox(
            height: 10,
          )
        ],
      ),
    ),
  );
}
