import 'package:flutter/material.dart';
import 'package:ussd_kodlari/Mobiuz_full/Operator%20xizmatlari/Tarif%20rejalari/models/imtiyoz_model.dart';

// ignore: camel_case_types
class Imtiyozli_mobiuz extends StatelessWidget {
  const Imtiyozli_mobiuz({super.key});

  static List<Imtiyoz_mobi> model = [
    Imtiyoz_mobi(
        name: "Imtiyozli tarif rejalari",
        info: "Ushbu xizmatlarni faqat rasmiy ofislardan ulatishingiz mumkin")
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: model.length,
        itemBuilder: (context, index) {
          return Imtiyozli_items(model[index]);
        });
  }
}

// ignore: non_constant_identifier_names
Widget Imtiyozli_items(Imtiyoz_mobi models) {
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
