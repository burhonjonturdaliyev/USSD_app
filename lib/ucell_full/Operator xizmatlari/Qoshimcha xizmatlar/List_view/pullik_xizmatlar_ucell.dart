import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:ussd_kodlari/ucell_full/Operator%20xizmatlari/Qoshimcha%20xizmatlar/models/pullik_xizmatlar_ucell_models.dart';

// ignore: camel_case_types
class pullik_xizmatlar_ucell extends StatelessWidget {
  const pullik_xizmatlar_ucell({super.key});
  static List<pullik_xizmatlar_ucell_models> models = [
    pullik_xizmatlar_ucell_models(
      name: "Raqamni yashirish",
      info:
          "Ucell abonentlari uchun ushbu xizmat qo'ng'iroq vaqtida shaxsiy raqamlarini qo'ng'iroq qilayotgan abonentning mobil telefoni displeyida ko'rinmaslik imkoniyatini beradi. Qo'ng'iroq qilayotgan abonentning mobil telefoni displeyida “Raqam aniqlanmagan” yoki telefon apparati sozlashlariga xos boshqa ma'lumot ko'rinadi\nAbonent to'lovi kuniga 421 so'm",
      activate: "*321#",
      deactivate: "*311*4#",
    ),
    pullik_xizmatlar_ucell_models(
      name: "Ucelldan tungi internet",
      info:
          "Ucelldan \"Tungi internet\" aksiyasi - bu atigi 79990 so'm evaziga tungi soat 01:00 dan 09:00 gacha internetdan foydanalish imkonidir\nUlanish narxi: 7990 so'm",
      activate: "*616#",
      deactivate: "*616*3*1#",
    ),
    pullik_xizmatlar_ucell_models(
      name: "Cheksiz internet-to'plamlar",
      info:
          "Har kuni Siz uchun 150Mb/soniyasiga tezlikdagi Mobil Internet hamda biznes,ko'ngilochar o'yinlar, muloqot va boshqa maqsadlar uchun mo'ljallangan internetdan tushunarli va qulay tarzda foydalanish imkoniyati taqdim etiladi! Ucelldan yuqori tezlikdagi 4G bilan yangi imkoniyatlar eshigini oching! Ucelldan yuqori tezlikdagi 4G bilan yangi imkoniyatlar eshigini oching!",
      activate: "*555*4#",
      deactivate: "*555*4*10*2#",
    ),
    pullik_xizmatlar_ucell_models(
      name: "Oylik 4G internet-to'plamlar",
      info:
          "Endi Ucelldan 4G Internet har bir abonent uchun amal qiladi!\nUcell yangi Oylik Internet to'plamlarini taqdim qilmoqda. To'plamlardan biriga bir marta ulaning va har 30 kunda yangi to'plamga ega bo'ling. To'plamlar avtomatik tarzda belgilanadi",
      activate: "*555*5#",
      deactivate: "*555*5*10*2#",
    ),
    pullik_xizmatlar_ucell_models(
      name: "4G ni sinab ko'r",
      info: "Atigi 42,1 so'm evaziga 30 kunga 5000Mb",
      activate: "*500#",
      deactivate: "*500*5#",
    ),
    pullik_xizmatlar_ucell_models(
      name: "Internet Mega Boom",
      info: "1 Mb atigi 42,1 so'm\nKunlik abonent to'lovi: 421 so'm",
      activate: "*909#",
      deactivate: "*900*2#",
    ),
    pullik_xizmatlar_ucell_models(
      name: "Maksimal internet",
      info:
          "Internet foydalanuvchilar uchun yangi taklif\n1 Mb narxi kunduz kuniga 84,2 so'm, tunda 4,21 so'm\nXizmatga ulanish narxi: 631,5 so'm\nKunlik abonent to'lovi: 631,5 so'm",
      activate: "*808#",
      deactivate: "*808*2#",
    )
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: models.length,
        itemBuilder: (context, index) {
          return pullik_xizmatlar_ucell_items(models[index]);
        });
  }
}

// ignore: non_constant_identifier_names
Widget pullik_xizmatlar_ucell_items(pullik_xizmatlar_ucell_models models) {
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
