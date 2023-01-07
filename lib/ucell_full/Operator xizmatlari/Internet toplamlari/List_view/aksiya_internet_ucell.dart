import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';

// ignore: camel_case_types
class aksiya_internet_ucell extends StatelessWidget {
  const aksiya_internet_ucell({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
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
                        "Aksiya MBlar",
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
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          const Expanded(
                              child: Text(
                                  "Tarif rejasi bo'yicha internet-trafigingiz yetmay qoldimi? Yangi internet-to'plamini kutib oling:"))
                        ],
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Row(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          const Expanded(
                              child: Text(
                                  "300 MB atigi 5000 so'mga - \"COSMO\", \"Kayfiyat\", \"Tantana Unlim\" va \"Mahalla\" tariflari uchun"))
                        ],
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Row(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          const Expanded(
                              child: Text(
                                  "1 GB atigi 8000 so'mga - \"COSMO\", \"Kayfiyat\", \"Tantana Unlim\" va \"Mahalla\" tariflari uchun"))
                        ],
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Row(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          const Expanded(
                              child: Text(
                                  "2 GB atigi 15000 so'mga - \"COSMO\", \"Kayfiyat\", \"Tantana Unlim\" va \"Mahalla\" tariflari uchun"))
                        ],
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Row(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          const Expanded(
                              child: Text(
                                  "3 GB atigi 20000 so'mga - \"COSMO\", \"Kayfiyat\", \"Tantana Unlim\" va \"Mahalla\" tariflari uchun"))
                        ],
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Row(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          const Expanded(
                              child: Text(
                                  "6 GB atigi 30000 so'mga - \"COSMO\", \"Kayfiyat\", \"Tantana Unlim\" va \"Mahalla\" tariflari uchun"))
                        ],
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Row(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          const Expanded(
                              child: Text(
                                  "10 GB atigi 50000 so'mga - \"COSMO\", \"Kayfiyat\", \"Tantana Unlim\" va \"Mahalla\" tariflari uchun"))
                        ],
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Row(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          const Expanded(
                              child: Text(
                                  "2 GB atigi 10000 so'mga - \"Active\", va \"Speacial\" tariflar tizimlari uchun"))
                        ],
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Row(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          const Expanded(
                              child: Text(
                                  "3 GB atigi 15000 so'mga - \"Active\", va \"Speacial\" tariflar tizimlari uchun"))
                        ],
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Row(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          const Expanded(
                              child: Text(
                                  "6 GB atigi 27000 so'mga - \"Active\", va \"Speacial\" tariflar tizimlari uchun"))
                        ],
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Row(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          const Expanded(
                              child: Text(
                                  "10 GB atigi 45000 so'mga - \"Active\", va \"Speacial\" tariflar tizimlari uchun"))
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
                      FlutterPhoneDirectCaller.callNumber("*255#");
                    },
                    child: const Text("Faollashtish uchun")),
                const SizedBox(
                  height: 10,
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
