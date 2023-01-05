import "package:flutter/material.dart";
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:ussd_kodlari/Mobiuz_full/Operator%20xizmatlari/Tarif%20rejalari/models/fresh_models.dart';

// ignore: camel_case_types
class Fresh_mobiuz extends StatelessWidget {
  const Fresh_mobiuz({super.key});

  static List<Fresh_models> models = [
    Fresh_models("Asosiy", "21000", "2000", "126,31", "2000", "421,04", "2000",
        "84,2", "616114", "*111*114#"),
    Fresh_models("Standart", "25000", "3500", "126,31", "3500", "421,04",
        "3500", "84,2", "616117", "*111*117#"),
    Fresh_models("Optimal+", "33000", "5000", "126,31", "5000", "421,04",
        "5000", "84,2", "616121", "*111*121#"),
    Fresh_models("Chilla", "20000", "3000", "84,2", "200", "421,04", "100",
        "84,2", "616042", "*111*042#"),
    Fresh_models("Qulay+", "42000", "5000", "126,31", "8000", "421,04", "5000",
        "84,2", "616127", "*111*127#"),
    Fresh_models("Yorqin", "60000", "5000", "126,31", "15000", "421,04", "5000",
        "84,2", "616113", "*111*113#"),
    Fresh_models("Premial", "63000", "15000", "0", "15000", "421,04", "15000",
        "84,2", "616130", "*111*130#"),
    Fresh_models("Ideal", "94000", "30000", "146,31", "15000", "421,04",
        "30000", "84,2", "616135", "*111*135#"),
    Fresh_models("Cheksiz", "147000", "Cheksiz", "0", "30000", "421,04",
        "50000", "84,2", "616141", "*111*141#"),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: models.length,
        itemBuilder: (context, index) {
          return fresh_items(models[index]);
        });
  }
}

// ignore: non_constant_identifier_names
Widget fresh_items(Fresh_models models) {
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
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                )
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
                    Expanded(child: Text("Oyiga to'lov: ${models.tolov} so'm"))
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                        child: Text("Uzb bo'yicha daqiqalar: ${models.daqiqa}"))
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                        child: Text(
                            "Limitdan tashqari daqiqa: ${models.limit_daqiqa} so'm"))
                  ],
                ),
                Row(
                  children: [
                    Expanded(child: Text("Internet: ${models.internet} Mb"))
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                        child: Text(
                            "Limitdan tashqari internet: ${models.tolov} so'm"))
                  ],
                ),
                Row(
                  children: [Expanded(child: Text("SMS: ${models.sms}"))],
                ),
                Row(
                  children: [
                    Expanded(
                        child: Text(
                            "Limitdan tashqari SMS: ${models.limit_sms} so'm"))
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                        child: Text(
                            "SMS yordamchi: ${models.tolov} raqamiga 1 sonini"))
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
              onPressed: () {
                FlutterPhoneDirectCaller.callNumber(models.code);
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
