import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:ussd_kodlari/ucell_full/Operator%20xizmatlari/Internet%20toplamlari/models/oylik_internet_ucell_models.dart';

// ignore: camel_case_types
class oylik_internet_ucell extends StatelessWidget {
  const oylik_internet_ucell({super.key});
  static List<oylik_internet_ucell_models> models = [
    oylik_internet_ucell_models(
      name: "1",
      narxi: "8900",
      internet: "1024",
      muddati: "31",
      activate: "*558*1*1*23631*1#",
      deactivate: "*555*3*10*1#",
    ),
    oylik_internet_ucell_models(
      name: "1,5",
      narxi: "13000",
      internet: "1536",
      muddati: "31",
      activate: "*558*1*2*23631*1#",
      deactivate: "*555*3*10*1#",
    ),
    oylik_internet_ucell_models(
      name: "2",
      narxi: "15000",
      internet: "2048",
      muddati: "31",
      activate: "*558*1*3*23631*1#",
      deactivate: "*555*3*10*1#",
    ),
    oylik_internet_ucell_models(
      name: "4",
      narxi: "25000",
      internet: "4096",
      muddati: "31",
      activate: "*558*1*4*23631*1#",
      deactivate: "*555*3*10*1#",
    ),
    oylik_internet_ucell_models(
      name: "7",
      narxi: "35000",
      internet: "7168",
      muddati: "31",
      activate: "*558*1*5*23631*1#",
      deactivate: "*555*3*10*1#",
    ),
    oylik_internet_ucell_models(
      name: "10",
      narxi: "45000",
      internet: "10240",
      muddati: "31",
      activate: "*558*1*13*23631*1#",
      deactivate: "*555*3*10*1#",
    ),
    oylik_internet_ucell_models(
      name: "13",
      narxi: "55000",
      internet: "13312",
      muddati: "31",
      activate: "*558*1*6*23631*1#",
      deactivate: "*555*3*10*1#",
    ),
    oylik_internet_ucell_models(
      name: "20",
      narxi: "65000",
      internet: "20480",
      muddati: "31",
      activate: "*558*1*7*23631*1#",
      deactivate: "*555*3*10*1#",
    ),
    oylik_internet_ucell_models(
      name: "30",
      narxi: "75000",
      internet: "30720",
      muddati: "31",
      activate: "*558*1*8*23631*1#",
      deactivate: "*555*3*10*1#",
    ),
    oylik_internet_ucell_models(
      name: "50",
      narxi: "85000",
      internet: "51200",
      muddati: "31",
      activate: "*558*1*9*23631*1#",
      deactivate: "*555*3*10*1#",
    ),
    oylik_internet_ucell_models(
      name: "80",
      narxi: "115000",
      internet: "81920",
      muddati: "31",
      activate: "*558*1*10*23631*1#",
      deactivate: "*555*3*10*1#",
    ),
    oylik_internet_ucell_models(
      name: "90",
      narxi: "135000",
      internet: "92160",
      muddati: "31",
      activate: "*558*1*11*23631*1#",
      deactivate: "*555*3*10*1#",
    ),
    oylik_internet_ucell_models(
      name: "135",
      narxi: "188000",
      internet: "138240",
      muddati: "31",
      activate: "*558*1*12*23631*1#",
      deactivate: "*555*3*10*1#",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: models.length,
        itemBuilder: (context, index) {
          return oylik_internet_ucell_items(models[index]);
        });
  }
}

// ignore: non_constant_identifier_names
Widget oylik_internet_ucell_items(oylik_internet_ucell_models models) {
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
                  "${models.name} GB",
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
