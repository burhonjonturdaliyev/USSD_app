// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:ussd_kodlari/uzmobile_models/operator_page_model.dart';

class Operator extends StatelessWidget {
  const Operator({super.key});
  static List<models_operator> operator = [
    models_operator(
        name: "Mobile xizmat bo'yicha",
        info: "Mobile xizmat bo'yicha",
        code: "1099"),
    models_operator(
        name: "Mobile xizmat bo'yicha",
        info: "Korporativ mijozlar uchun",
        code: "1155"),
    models_operator(
        name: "Mobile xizmat bo'yicha",
        info: "Internet va IPTV xizmatlari bo'yicha",
        code: "1084"),
    models_operator(
        name: "Mobile xizmat bo'yicha",
        info: "Telfonni tamirlash bo'yicha",
        code: "1086"),
    models_operator(
        name: "Ushbu dasturning texnik xizmati uchun",
        info: "Ushbu dasturning texnik xizmati uchun",
        code: "+998906936594"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        title: Text("Operatorlar"),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: operator.length,
          itemBuilder: ((context, index) {
            return operator_items(operator[index]);
          })),
    );
  }
}

// ignore: non_constant_identifier_names
Widget operator_items(models_operator operator) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: GestureDetector(
      onTap: () {
        FlutterPhoneDirectCaller.callNumber(operator.code);
      },
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            // ignore: prefer_const_literals_to_create_immutables
            boxShadow: [
              BoxShadow(
                  color: Colors.black,
                  spreadRadius: -5,
                  blurRadius: 10,
                  offset: const Offset(0, 1))
            ],
            border: Border.all(width: 1, color: Colors.white30)),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [Expanded(child: Text(operator.info))],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              operator.code,
              style: const TextStyle(color: Colors.grey, fontSize: 16),
            ),
            const SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    ),
  );
}
