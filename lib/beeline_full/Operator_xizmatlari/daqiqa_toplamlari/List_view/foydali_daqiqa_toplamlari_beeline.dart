import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:ussd_kodlari/beeline_full/Operator_xizmatlari/daqiqa_toplamlari/models/daqiqalar_daqiqa_toplamlari_beeline_models.dart';

// ignore: camel_case_types
class foydali_daqiqa_toplamlari_beeline extends StatelessWidget {
  const foydali_daqiqa_toplamlari_beeline({super.key});

  static List<daqiqalar_daqiqa_toplamlari_beeline_models> models = [
    daqiqalar_daqiqa_toplamlari_beeline_models(
        name: "200 MB = 100 DAQIQA",
        info:
            "Yechib olish: 200 Mb\nTaqdim etish: 100 daqiqa\nXizmat narxi: 2500 so'm\nAmal qilish muddati: 7 kun\n\nFaqatgina tarifingiz bo'yicha taqdim etiladigan trafikni o'zaro almashtirish mumkin.\n Daqiqalar va megabaytlarni almashtirish xizmatidan \"Status\",\"Status 2021\", \"Status+\", \"Status NEW\", \"Hammasi ZO'R\" va \"ZO'R\", \"XIT\", \"XIT+\", \"YANGI XIT\" tarif turkumlaridagi, hamda \"Bir Oy\", \"Erkin muloqot\", \"Bravo MIX\", \"Smartphone\" tarif rejalaridagi abonentlar foydalanishi mumkin",
        code: "201*1#"),
    daqiqalar_daqiqa_toplamlari_beeline_models(
        name: "400 MB = 200 DAQIQA",
        info:
            "Yechib olish: 400 Mb\nTaqdim etish: 200 daqiqa\nXizmat narxi: 4000 so'm\nAmal qilish muddati: 7 kun\n\nFaqatgina tarifingiz bo'yicha taqdim etiladigan trafikni o'zaro almashtirish mumkin.\n Daqiqalar va megabaytlarni almashtirish xizmatidan \"Status\",\"Status 2021\", \"Status+\", \"Status NEW\", \"Hammasi ZO'R\" va \"ZO'R\", \"XIT\", \"XIT+\", \"YANGI XIT\" tarif turkumlaridagi, hamda \"Bir Oy\", \"Erkin muloqot\", \"Bravo MIX\", \"Smartphone\" tarif rejalaridagi abonentlar foydalanishi mumkin",
        code: "201*2#"),
    daqiqalar_daqiqa_toplamlari_beeline_models(
      name: "*777*1*15#",
      info: "70 ball ni 15 daqiqalik paketga almashtish",
      code: "*777*1*15#",
    ),
    daqiqalar_daqiqa_toplamlari_beeline_models(
      name: "*777*1*30#",
      info: "130 ball ni 30 daqiqalik paketga almashtish",
      code: "*777*1*30#",
    ),
    daqiqalar_daqiqa_toplamlari_beeline_models(
      name: "*777*1*60#",
      info: "250 ball ni 60 daqiqalik paketga almashtish",
      code: "*777*1*60#",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: models.length,
        itemBuilder: (context, index) {
          return foydali_daqiqa_toplamlari_beeline_items(models[index]);
        });
  }
}

// ignore: non_constant_identifier_names
Widget foydali_daqiqa_toplamlari_beeline_items(
    daqiqalar_daqiqa_toplamlari_beeline_models models) {
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
                      color: Color(0xffffc904),
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                )
              ],
            ),
          ),
          const Divider(
            thickness: 1,
            color: Color(0xffffc904),
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
                  backgroundColor: const Color(0xffffc904)),
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
