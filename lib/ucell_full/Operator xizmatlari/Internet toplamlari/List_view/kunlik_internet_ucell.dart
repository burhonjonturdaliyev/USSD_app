import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:ussd_kodlari/ucell_full/Operator%20xizmatlari/Internet%20toplamlari/models/oylik_internet_ucell_models.dart';

// ignore: camel_case_types
class kunlik_internet_ucell extends StatelessWidget {
  const kunlik_internet_ucell({super.key});
  static List<oylik_internet_ucell_models> models = [
    oylik_internet_ucell_models(
      name: "5",
      narxi: "390",
      internet: "5",
      muddati: "1",
      activate: "*555*1*1*1*23631#",
      deactivate: "*555*2*10*2#",
    ),
    oylik_internet_ucell_models(
      name: "10",
      narxi: "550",
      internet: "10",
      muddati: "1",
      activate: "*555*1*2*1*23631#",
      deactivate: "*555*2*10*2#",
    ),
    oylik_internet_ucell_models(
      name: "20",
      narxi: "790",
      internet: "20",
      muddati: "1",
      activate: "*555*1*3*1*23631#",
      deactivate: "*555*2*10*2#",
    ),
    oylik_internet_ucell_models(
      name: "35",
      narxi: "1190",
      internet: "35",
      muddati: "1",
      activate: "*555*1*4*1*23631#",
      deactivate: "*555*2*10*2#",
    ),
    oylik_internet_ucell_models(
      name: "55",
      narxi: "1890",
      internet: "55",
      muddati: "1",
      activate: "*555*1*5*1*23631#",
      deactivate: "*555*2*10*2#",
    ),
    oylik_internet_ucell_models(
      name: "100",
      narxi: "2790",
      internet: "100",
      muddati: "1",
      activate: "*555*1*6*1*23631#",
      deactivate: "*555*2*10*2#",
    ),
    oylik_internet_ucell_models(
      name: "130",
      narxi: "3790",
      internet: "130",
      muddati: "1",
      activate: "*555*1*7*1*23631#",
      deactivate: "*555*2*10*2#",
    ),
    oylik_internet_ucell_models(
      name: "160",
      narxi: "4490",
      internet: "160",
      muddati: "1",
      activate: "*555*1*8*1*23631#",
      deactivate: "*555*2*10*2#",
    ),
    oylik_internet_ucell_models(
      name: "200",
      narxi: "4990",
      internet: "200",
      muddati: "1",
      activate: "*555*1*9*1*23631#",
      deactivate: "*555*2*10*2#",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: models.length,
      itemBuilder: (context, index) =>
          kunlik_internet_ucell_items(models[index]),
    );
  }
}

// ignore: non_constant_identifier_names
Widget kunlik_internet_ucell_items(oylik_internet_ucell_models models) {
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
                  "To'plam ${models.name} MB",
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
                Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const Expanded(
                        child: Text(
                            "Kunlik to'plamlarning asosiy ustunligi shundaki, ishlatilmagan trafik qoldig'i keyingi kun trafigiga qo'shilib boraveradi. Xizmat bekor qilingan holda yig'ilgan Internet-trafik qoldig'i bekor qilinadi"))
                  ],
                )
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff6b2d82)),
                  onPressed: () {
                    FlutterPhoneDirectCaller.callNumber(models.activate);
                  },
                  child: const Text("Faollashtish uchun")),
              ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.green),
                  onPressed: () {
                    FlutterPhoneDirectCaller.callNumber(models.deactivate);
                  },
                  child: const Text("O'chirish uchun")),
            ],
          ),
          const SizedBox(
            height: 10,
          )
        ],
      ),
    ),
  );
}
