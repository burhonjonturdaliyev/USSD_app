import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:ussd_kodlari/Mobiuz_full/Operator%20xizmatlari/Tarif%20rejalari/models/faol_model.dart';

// ignore: camel_case_types
class Yillik_tarif extends StatelessWidget {
  const Yillik_tarif({super.key});
  static List<Faol_model> model = [
    Faol_model(
        name: "Mobi 50 Yillik",
        abonent: "500000 so'm - Abonent to'lovi yiliga",
        info:
            "Unlim Mobiuz tarmog'i ichida\n5000 daqiqa O'zbekiston bo'yicha qo'ng'iroqlarga",
        internet: "10000 Mb Mobile internet oyiga",
        sms: "3500 SMS oyiga",
        code: "*111*142#"),
    Faol_model(
        name: "Mobi 70 Yillik",
        abonent: "700000 so'm - Abonent to'lovi yiliga",
        info:
            "Unlim Mobiuz tarmog'i ichida\n5000 daqiqa O'zbekiston bo'yicha qo'ng'iroqlarga",
        internet: "20000 Mb Mobile internet oyiga",
        sms: "3500 SMS oyiga",
        code: "*111*143#"),
    Faol_model(
        name: "Mobi 90 Yillik",
        abonent: "900000 so'm - Abonent to'lovi yiliga",
        info:
            "Unlim Mobiuz tarmog'i ichida\n5000 daqiqa O'zbekiston bo'yicha qo'ng'iroqlarga",
        internet: "65000 Mb Mobile internet oyiga",
        sms: "3500 SMS oyiga",
        code: "*111*144#"),
    Faol_model(
        name: "Mobi 110 Yillik",
        abonent: "1100000 so'm - Abonent to'lovi yiliga",
        info: "UNLIM O'zbekiston bo'yicha barcha qo'ng'iroqlarga",
        internet: "80000 Mb Mobile internet oyiga",
        sms: "5000 SMS oyiga",
        code: "*111*145#"),
    Faol_model(
        name: "Mobi 150 Yillik",
        abonent: "1500000 so'm - Abonent to'lovi yiliga",
        info: "UNLIM O'zbekiston bo'yicha barcha qo'ng'iroqlarga",
        internet: "100000 Mb Mobile internet oyiga",
        sms: "10000 SMS oyiga",
        code: "*111*146#"),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: model.length,
      itemBuilder: (context, index) {
        return yillik_items(model[index]);
      },
    );
  }
}

// ignore: non_constant_identifier_names
Widget yillik_items(Faol_model models) {
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
              children: [
                Row(
                  children: [Expanded(child: Text(models.abonent))],
                ),
                Row(
                  children: [Expanded(child: Text(models.info))],
                ),
                Row(
                  children: [Expanded(child: Text(models.internet))],
                ),
                Row(
                  children: [Expanded(child: Text(models.sms))],
                ),
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
