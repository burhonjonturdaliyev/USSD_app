import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:ussd_kodlari/ucell_full/Operator%20xizmatlari/USSD%20kodlari/models/ussd_kodlari_ucell_models.dart';

// ignore: camel_case_types
class ussd_kodlari_ucell extends StatelessWidget {
  const ussd_kodlari_ucell({super.key});
  static List<ussd_kodlari_ucell_models> models = [
    ussd_kodlari_ucell_models(
      name: "*100#",
      info: "Balansni tekshirish",
      code: "*100#",
    ),
    ussd_kodlari_ucell_models(
      name: "*977*1*1#",
      info: "\"Sizga qo'ng'iroq qilishdi\" xizmati",
      code: "*977*1*1#",
    ),
    ussd_kodlari_ucell_models(
      name: "*450#",
      info: "Mening raqamim",
      code: "*450#",
    ),
    ussd_kodlari_ucell_models(
      name: "*107#",
      info: "Internet to'plamlari qoldig'ini tekshirish",
      code: "*107#",
    ),
    ussd_kodlari_ucell_models(
      name: "*147#",
      info: "SMS qoldig'ini tekshirish",
      code: "*147#",
    ),
    ussd_kodlari_ucell_models(
      name: "*222#",
      info:
          "\"Restart\" xizmatini muvaffaqiyatli faollashtirilganda \"Kayfiyat\", \"Student\" va \"Active\" tariflar tizimidagi abonentlar oylik davrning istalgan kunida bir oylik abonent to'lovining yechilish muddati yangilanadi",
      code: "*222#",
    ),
    ussd_kodlari_ucell_models(
      name: "*102#",
      info: "Bonus daqiqalar qoldig'ini tekshirish",
      code: "*102#",
    ),
    ussd_kodlari_ucell_models(
      name: "*400#",
      info: "SMS tafsilot",
      code: "*400#",
    ),
    ussd_kodlari_ucell_models(
      name: "*103#",
      info: "Limitlar qoldig'ini tekshirish",
      code: "*103#",
    ),
    ussd_kodlari_ucell_models(
      name: "*401#",
      info: "Mening xizmatlarim",
      code: "*401#",
    ),
    ussd_kodlari_ucell_models(
      name: "*912#",
      info: "Mobil Avans(qarz) qoldig'ini tekshirish",
      code: "*912#",
    ),
    ussd_kodlari_ucell_models(
      name: "*111#",
      info: "USSD menyu",
      code: "*111#",
    ),
    ussd_kodlari_ucell_models(
      name: "*220#",
      info: "Til tanlash",
      code: "*220#",
    ),
    ussd_kodlari_ucell_models(
      name: "*350#",
      info: "Pullik xizmatlarni o'chirish",
      code: "*350#",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "USSD kodlari",
          style: TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        elevation: 10,
        backgroundColor: const Color(0xff6b2d82),
      ),
      body: ListView.builder(
          itemCount: models.length,
          itemBuilder: (context, index) {
            return ussd_kodlari_ucell_items(models[index]);
          }),
    );
  }
}

// ignore: non_constant_identifier_names
Widget ussd_kodlari_ucell_items(ussd_kodlari_ucell_models models) {
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
