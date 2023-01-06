import 'package:flutter/material.dart';
import 'package:ussd_kodlari/Mobiuz_full/Operator%20xizmatlari/Qoshimcha%20xizmatlar/models/pullik_mobiuz_models.dart';

// ignore: camel_case_types
class Pullik_xizmatlar_mobiuz extends StatelessWidget {
  const Pullik_xizmatlar_mobiuz({super.key});
  static List<Pullik_mobiuz_models> models = [
    Pullik_mobiuz_models(
      name: "Ob-havo",
      info:
          "346 raqamidan kelyotgan Ob-havoni o'chirish uchun 346 raqamiga 2 sonini SMS tarzida yuboring",
    ),
    Pullik_mobiuz_models(
      name: "Munajjimlar bashorati",
      info:
          "346 raqamidan kelyotgan Munajjimlar bashoratini o'chirish uchun 347 raqamiga 2 sonini SMS tarzida yuboring",
    ),
    Pullik_mobiuz_models(
      name: "Latifalar",
      info:
          "346 raqamidan kelyotgan Latifalarni o'chirish uchun 359 raqamiga 2 sonini SMS tarzida yuboring",
    ),
    Pullik_mobiuz_models(
      name: "Musiqa 656",
      info:
          "656 raqamidan kelyotgan pullik Musiqalarni o'chirish uchun 655 raqamiga 09 sonini SMS tarzida yuboring",
    ),
    Pullik_mobiuz_models(
      name: "O'yinlar 656",
      info:
          "656 raqamidan kelyotgan pullik O'yinlarni o'chirish uchun 655 raqamiga 010 sonini SMS tarzida yuboring",
    ),
    Pullik_mobiuz_models(
      name: "Video 656",
      info:
          "656 raqamidan kelyotgan pullik Videolarni o'chirish uchun 655 raqamiga 011 sonini SMS tarzida yuboring",
    ),
    Pullik_mobiuz_models(
      name: "852",
      info:
          "852 raqamidan kelyotgan pullik SMS larni o'chirish uchun 789 raqamiga STOP G so'zini SMS tarzida yuboring",
    ),
    Pullik_mobiuz_models(
      name: "1112",
      info:
          "1112 raqamidan kelyotgan pullik SMS larni o'chirish uchun 1111 raqamiga 01 sonini SMS tarzida yuboring",
    ),
    Pullik_mobiuz_models(
      name: "Ob-havo \"VIVA KONTENT\" MCHJ",
      info:
          "Ushbu servis abonentlarga o'z hududlaridagi ob-havoni bilib olish imkonini taqdim etadi",
    ),
    Pullik_mobiuz_models(
      name: "Ob-havo \"ULTRA KONTENT\" MCHJ",
      info:
          "Obuna bo'lgan davrdan 1 ta kiruvchi SMS - xabarning narxi - 842 so'm. Ushbu servis abonentlarga o'z hududlaridagi ob-havoni bilib olish imkonini taqdim etadi",
    ),
    Pullik_mobiuz_models(
      name: "Ob-havo",
      info:
          "346 raqamidan kelyotgan Ob-havoni o'chirish uchun 346 raqamiga 2 sonini SMS tarzida yuboring",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: models.length,
        itemBuilder: (context, index) {
          return Pullik_xizmatlar_mobiuz_items(models[index]);
        });
  }
}

// ignore: non_constant_identifier_names
Widget Pullik_xizmatlar_mobiuz_items(Pullik_mobiuz_models models) {
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
          const SizedBox(
            height: 10,
          )
        ],
      ),
    ),
  );
}
