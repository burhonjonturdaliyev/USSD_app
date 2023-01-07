import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:ussd_kodlari/ucell_full/Operator%20xizmatlari/Qoshimcha%20xizmatlar/models/xizmatlar_ucell_models.dart';

// ignore: camel_case_types
class xizmatlar_ucell extends StatelessWidget {
  const xizmatlar_ucell({super.key});
  static List<xizmatlar_ucell_models> models = [
    xizmatlar_ucell_models(
      name: "*911#",
      info: "Mobil Avans(Qarz olish)",
    ),
    xizmatlar_ucell_models(
      name: "*111*4*2*2#",
      info:
          "Internet sozlamalar. Faollashtirish uchun tugmasini bosing va sizga SMS shaklida avtomatik sozlamalar yuboriladi",
    ),
    xizmatlar_ucell_models(
      name: "*255#",
      info:
          "Faqat \"Speacial\" tarif rejalari tizimi uchun 10000 so'm evaziga 2 GB internet-to'plam va restart xizmati",
    ),
    xizmatlar_ucell_models(
      name: "*757#",
      info:
          "Oson almashuv 1000 gacha daqiqaga, 500 gacha SMS, ijtimoiy tarmoqlar uchun 500 gacha Mb, umimiy foydalanish uchun 500 gacha Mb, yoki tunda foydalanish uchun 2000 Mb ni umimiy Mb larga almashtiring",
    ),
    xizmatlar_ucell_models(
      name: "*43#",
      info: "Kutib turishni faollashtirish",
    ),
    xizmatlar_ucell_models(
      name: "*#67#",
      info: "Pereadresatsiyasini tekshirish",
    ),
    xizmatlar_ucell_models(
      name: "*#06#",
      info: "Telefonning IMEI-kodini bilib oling",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: models.length,
        itemBuilder: (context, index) {
          return xizmatlar_ucell_items(models[index]);
        });
  }
}

// ignore: non_constant_identifier_names
Widget xizmatlar_ucell_items(xizmatlar_ucell_models models) {
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
                  children: [Expanded(child: Text(models.info))],
                ),
              ],
            ),
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff6b2d82)),
              onPressed: () {
                FlutterPhoneDirectCaller.callNumber(models.name);
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
