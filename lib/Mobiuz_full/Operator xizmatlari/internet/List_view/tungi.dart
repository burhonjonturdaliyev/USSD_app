import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:ussd_kodlari/Mobiuz_full/Operator%20xizmatlari/internet/models/tungi_models.dart';

// ignore: camel_case_types
class Tungi_mobiuz_internet extends StatelessWidget {
  const Tungi_mobiuz_internet({super.key});
  static List<Tungi_models> models = [
    Tungi_models(
        name: "Vip 1", narxi: "5000 so'm", muddati: "1 kun", code: "*200*1*1#"),
    Tungi_models(
        name: "Vip 7",
        narxi: "20000 so'm",
        muddati: "7 kun",
        code: "*200*7*1#"),
    Tungi_models(
        name: "Vip 30",
        narxi: "60000 so'm",
        muddati: "30 kun",
        code: "*200*30*1#"),
    Tungi_models(
        name: "1000 Mb",
        narxi: "5000 so'm",
        muddati: "1 kun",
        code: "*200*1000#"),
    Tungi_models(
        name: "2000 Mb",
        narxi: "9500 so'm",
        muddati: "1 kun",
        code: "*200*2000#"),
    Tungi_models(
        name: "3000 Mb",
        narxi: "12500 so'm",
        muddati: "1 kun",
        code: "*200*3000#"),
    Tungi_models(
        name: "5000 Mb",
        narxi: "17000 so'm",
        muddati: "1 kun",
        code: "*200*5000#"),
    Tungi_models(
        name: "10000 Mb",
        narxi: "22000 so'm",
        muddati: "1 kun",
        code: "*200*10000#"),
    Tungi_models(
        name: "20000 Mb",
        narxi: "33000 so'm",
        muddati: "1 kun",
        code: "*200*20000#"),
    Tungi_models(
        name: "50000 Mb",
        narxi: "44000 so'm",
        muddati: "1 kun",
        code: "*200*50000#"),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: models.length,
        itemBuilder: (context, index) {
          return Tungi_items(models[index]);
        });
  }
}

// ignore: non_constant_identifier_names
Widget Tungi_items(Tungi_models models) {
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
                  children: [Text("Narxi: ${models.narxi} so'm")],
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Expanded(
                        child:
                            Text("Amal qilish muddati: ${models.muddati} kun")),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const Expanded(
                      child: Text(
                          "Tungi internet-to'plam qoldig'ini: *203# USSD-buyrug'i orqali yoki 616203 raqamiga 3 sonini sms-xabar tariqasida yuborish orqali tekshirib ko'rish mumkin"),
                    )
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const Expanded(
                        child: Text(
                            "Shartlar:\nTungi internet-to'plamlar to'g'ri ishlatish uchun har kuni soat 00:00 dan keyin internetni o'chirib, qayta yoqish lozim. Aks holda tungi internet to'plamlarning ishga tushishi kafolatlanmaydi"))
                  ],
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
