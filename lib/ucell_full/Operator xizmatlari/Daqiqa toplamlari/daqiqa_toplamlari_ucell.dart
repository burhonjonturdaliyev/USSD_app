import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';

// ignore: camel_case_types
class daqiqa_toplamlari_ucell extends StatelessWidget {
  const daqiqa_toplamlari_ucell({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Daqiqa to'plamlari",
          style: TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        elevation: 10,
        backgroundColor: const Color(0xff6b2d82),
      ),
      body: ListView(children: [
        Padding(
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
                  children: [Expanded(child: Text(models.narxi))],
                ),
                Row(
                  children: [Expanded(child: Text(models.daqiqa))],
                ),
                Row(
                  children: [Expanded(child: Text(models.internet))],
                ),
                Row(
                  children: [Expanded(child: Text(models.sms))],
                )
              ],
            ),
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff6b2d82)),
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
      ]),
    );
  }
}
