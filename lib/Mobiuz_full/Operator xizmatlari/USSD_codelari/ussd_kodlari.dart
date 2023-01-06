import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:ussd_kodlari/Mobiuz_full/Operator%20xizmatlari/USSD_codelari/models/ussd_models.dart';

// ignore: camel_case_types
class USSD_Mobiuz_kodlari extends StatelessWidget {
  const USSD_Mobiuz_kodlari({super.key});

  static List<Ussd_models> models = [
    Ussd_models(
      name: "Balansni tekshirish",
      info:
          "Hisobingizdagi mablag'ni tekshirish va qo'shimcha limitlarni ham ko'rish",
      code: "*100#",
    ),
    Ussd_models(
      name: "Tarif qoldig'i",
      info: "Tarif qoldig'ini tekshirish",
      code: "*102#",
    ),
    Ussd_models(
      name: "Bonus internet qoldig'i",
      info: "Bonusli internet to'plamini tekshirish",
      code: "*102*0#",
    ),
    Ussd_models(
      name: "Daqiqa qoldig'i",
      info:
          "Daqiqa to'plamini sotib olgan bo'lsangiz, bu kodni ishlatib, o'z xisobingizda qolgan daqiqalarni tekshirishingiz mumkin",
      code: "*103#",
    ),
    Ussd_models(
      name: "SMS qoldig'i",
      info:
          "SMS to'plamini sotib olgan bo'lsangiz, bu kodni ishlatib, o'z xisobingizda qolgan SMS larni tekshirishingiz mumkin",
      code: "*104#",
    ),
    Ussd_models(
      name: "Tungi drive qoldig'i",
      info: "Tungi drive xizmati Mb lar qoldig'ini tekshirish",
      code: "*200#",
    ),
    Ussd_models(
      name: "Tungi internet qoldig'i",
      info: "Tungi internet xizmati Mb lar qoldig'ini tekshirish",
      code: "*203#",
    ),
    Ussd_models(
      name: "Kunlik internet qoldig'i",
      info:
          "Kunlik internet to'plamlari xizmati doirasidagi Mb lar qoldig'ini tekshirish",
      code: "*204#",
    ),
    Ussd_models(
      name: "Mening raqamim",
      info:
          "O'z raqamingizni aniqlash uchun ushbu Faollashtirish uchun tugasini bosing",
      code: "*150#",
    ),
    Ussd_models(
      name: "Mening raqamlarim",
      info:
          "Bu xizmatdan foydalanib, sizning nomingizga ro'yxatdan o'tgan raqamlarni aniqlashingiz mumkin",
      code: "*151#",
    ),
    Ussd_models(
      name: "Gap ko'p",
      info:
          "Tarmoq ichida cheksiz muloqot\n\nMobi 50 va undan yuqori tarif egalari uchun tekin\n\nQolganlar uchun 4210 so'm",
      code: "*166#",
    ),
    Ussd_models(
      name: "Qarz olish",
      info: "Hisobingizda mablag' qolmaganida qarz oling va muloqot qiling",
      code: "*111*32#",
    ),
    Ussd_models(
      name: "Qarz qoldig'i",
      info: "Va'da qilingan to'lov xizmati qoldig'ini tekshirish",
      code: "*111*320#",
    ),
    Ussd_models(
      name: "Oxirgi to'lov",
      info: "Oxirgi qilingan to'lovingiz haqida malumot",
      code: "*111*015#",
    ),
    Ussd_models(
      name: "Mening xarajatlarim",
      info: "Umimiy xarajatlar miqdorini ko'rish mumkin",
      code: "*111*025#",
    ),
    Ussd_models(
      name: "Pul o'tkazishni taqiqlash",
      info: "Pul o'tkazishni taqiqlash",
      code: "*111*0151#",
    ),
    Ussd_models(
      name: "Konferens aloqa",
      info:
          "Konferens aloqa rejimi bir vaqtda bir nechta suhbatdoshlar o'rtasida suhbat tashkil etish imkonini beradi",
      code: "*111*0061#",
    ),
    Ussd_models(
      name: "Reklamani taqiqlash",
      info: "Reklamani taqiqlash",
      code: "*111*027*1#",
    ),
    Ussd_models(
      name: "IMEI ni anilash",
      info: "Mobil telefoningiz IMEI ni aniqlash",
      code: "*#06#",
    ),
    Ussd_models(
      name: "Mobil internetni yoqish",
      info: "Mobil internet xizmati",
      code: "*111*001#",
    ),
    Ussd_models(
      name: "Kutib turishni faollashtirish",
      info: "Kutib turishni faollashtirish",
      code: "*43#",
    ),
    Ussd_models(
      name: "Pereadresatsiyani aniqlash",
      info: "Pereadresatsiyani aniqlash",
      code: "*#67#",
    ),
    Ussd_models(
      name: "Mobil portal",
      info:
          "Mobil portal - bu har qanday vaqtda mustaqil tarzda o'z balansini bilish va tarif rejalarini o'zgartirish, boshqa xizmatga ulash yoki bekor qilish imkoniyati",
      code: "*111#",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'USSD kodlari',
          style: TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.red,
        elevation: 10,
      ),
      body: ListView.builder(
        itemCount: models.length,
        itemBuilder: (context, index) {
          return USSD_items_kodlari(models[index]);
        },
      ),
    );
  }
}

// ignore: non_constant_identifier_names
Widget USSD_items_kodlari(Ussd_models models) {
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
                  children: [Expanded(child: Text(models.info))],
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
