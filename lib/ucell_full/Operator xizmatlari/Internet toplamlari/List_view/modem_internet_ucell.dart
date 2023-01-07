import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:ussd_kodlari/ucell_full/Operator%20xizmatlari/Internet%20toplamlari/models/tun_internet_ucell_models.dart';

// ignore: camel_case_types
class modem_internet_ucell extends StatelessWidget {
  const modem_internet_ucell({super.key});

  static List<tun_internet_ucell_models> models = [
    tun_internet_ucell_models(
        name: "MESSENJER",
        narxi: "3000",
        internet: "1000",
        muddati: "30",
        activate: "*777#"),
    tun_internet_ucell_models(
        name: "Ijtimoiy tarmoqlar",
        narxi: "5000",
        internet: "2000",
        muddati: "30",
        activate: "*777#"),
    tun_internet_ucell_models(
        name: "YouTube",
        narxi: "8000",
        internet: "5000",
        muddati: "30",
        activate: "*777#"),
    tun_internet_ucell_models(
        name: "MESSENJER",
        narxi: "15000",
        internet: "10000",
        muddati: "30",
        activate: "*777#"),
    tun_internet_ucell_models(
        name: "YouTube + Telegram + Pubg",
        narxi: "12000",
        internet: "10000",
        muddati: "30",
        activate: "*777#"),
    tun_internet_ucell_models(
        name: "YouTube + Telegram",
        narxi: "10000",
        internet: "7000",
        muddati: "30",
        activate: "*777#"),
    tun_internet_ucell_models(
        name: "Tik Tok + Instagram + YouTube",
        narxi: "17000",
        internet: "5000",
        muddati: "30",
        activate: "*777#"),
    tun_internet_ucell_models(
        name: "CYBERSPORT",
        narxi: "7000",
        internet: "5000",
        muddati: "30",
        activate: "*777#"),
    tun_internet_ucell_models(
        name: "Viber + Whatsapp",
        narxi: "3000",
        internet: "1000",
        muddati: "30",
        activate: "*777#"),
    tun_internet_ucell_models(
        name: "Tik Tok",
        narxi: "3000",
        internet: "1000",
        muddati: "30",
        activate: "*777#"),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: models.length,
        itemBuilder: (context, index) {
          return modem_internet_ucell_items(models[index]);
        });
  }
}

// ignore: non_constant_identifier_names
Widget modem_internet_ucell_items(tun_internet_ucell_models models) {
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
                  children: [
                    Expanded(child: Text("To'plam narxi: ${models.narxi} so'm"))
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                        child: Text(
                            "Berilgan trafik hajmi: ${models.internet} Mb"))
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                        child:
                            Text("Amal qilish muddati: ${models.muddati} kun"))
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
              ],
            ),
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff6b2d82)),
              onPressed: () {
                FlutterPhoneDirectCaller.callNumber(models.activate);
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
