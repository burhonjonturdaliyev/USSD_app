import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:ussd_kodlari/Mobiuz_full/Operator%20xizmatlari/Tarif%20rejalari/models/faol_model.dart';

// ignore: camel_case_types
class Faol_Mobiuz extends StatelessWidget {
  const Faol_Mobiuz({super.key});

  // ignore: non_constant_identifier_names
  static List<Faol_model> Models = [
    Faol_model(
      name: "Mobi 20",
      abonent:
          "20000/1000 so'm - oylik/kunlik abonent to'lovi.\n2000/67 daqiqa(oyiga/kuniga) MOBIUZ abonentlariga",
      info:
          "O'zbekiston boshqa mobil operatorlari abonentlariga, Shahar raqamlariga chiquvchi qo'ng'iroqlarga",
      internet: "2000/67 Mb Mobil internet (oyiga/kuniga)",
      sms: "2000/67 SMS (oyiga/kuniga)",
      code: "*111*120#",
    ),
    Faol_model(
        name: "Mobi 25",
        abonent: "Abonent to'lovi - 25000/1250 so'm (oyiga/kuniga)",
        info:
            "3500/117 daqiqa (oyiga/kuniga) MOBIUZ abonentlariga, O'zbekistonning boshqa mobil operatorlari va shahar raqamlariga chiquvchi qo'ng'iroqlariga",
        internet: "3500/117 Mb (oyiga/kuniga) Mobil internet",
        sms: "3500/117 SMS (oyiga/kuniga)",
        code: "*111*102#")
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: Models.length,
      itemBuilder: (context, index) {
        return Faol_items(Models[index]);
      },
    );
  }
}

// ignore: non_constant_identifier_names
Widget Faol_items(Faol_model models) {
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
