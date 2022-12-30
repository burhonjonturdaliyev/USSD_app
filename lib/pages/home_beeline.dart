// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:ussd_kodlari/Mobiuz_full/Mobiuz_bar.dart';
import 'package:ussd_kodlari/navigatorbar/bar.dart';
import 'package:ussd_kodlari/ucell_full/ucell_bar.dart';

// ignore: camel_case_types
class Beeline_Homepage extends StatefulWidget {
  const Beeline_Homepage({super.key});

  @override
  State<Beeline_Homepage> createState() => _Beeline_HomepageState();
}

// ignore: camel_case_types
class _Beeline_HomepageState extends State<Beeline_Homepage> {
  final Uri _url = Uri.parse('https://beeline.uz/uz');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffffc904),
        centerTitle: true,
        // ignore: prefer_const_constructors
        title: Text(
          "USSD kodlar",
          style: const TextStyle(color: Colors.white),
        ),
        shadowColor: const Color.fromARGB(96, 81, 70, 70),
        elevation: 10,
      ),
      body: ListView(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 300,
                    height: 80,
                    decoration: BoxDecoration(
                        border: Border.all(
                            width: 1,
                            color: const Color.fromARGB(255, 181, 173, 173)),
                        boxShadow: [
                          const BoxShadow(
                              offset: Offset(0, 17),
                              blurRadius: 23,
                              spreadRadius: -13,
                              color: Colors.black54)
                        ],
                        borderRadius: BorderRadius.circular(16),
                        color: const Color.fromARGB(255, 255, 255, 255)),
                    child: Center(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            const Text(
                              "Beeline",
                              style: TextStyle(
                                color: Color(0xffffc904),
                                fontSize: 25,
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            const Text(
                                "Sifatli va ishonchli mobil aloqa operatori!")
                          ],
                        )
                      ],
                    )),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CircularProfileAvatar(
                    '',
                    radius: 35,
                    backgroundColor: Colors.white,
                    elevation: 10,
                    child: Center(
                        child: TextButton(
                      onPressed: () {
                        const Duration(microseconds: 0);
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Bar()),
                            (route) => false);
                      },
                      child: const Text(
                        "Uzmobile",
                        style: TextStyle(color: Colors.blue, fontSize: 11),
                      ),
                    )),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  CircularProfileAvatar(
                    '',
                    radius: 35,
                    backgroundColor: Colors.white,
                    elevation: 10,
                    child: Center(
                        child: TextButton(
                      onPressed: () {
                        const Duration(microseconds: 0);
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const BarMobi()),
                            (route) => false);
                      },
                      child: const Text(
                        "Mobiuz",
                        style: TextStyle(color: Colors.red, fontSize: 11),
                      ),
                    )),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  CircularProfileAvatar(
                    '',
                    radius: 35,
                    backgroundColor: Colors.white,
                    elevation: 10,
                    child: Center(
                        child: TextButton(
                      onPressed: () {
                        const Duration(microseconds: 0);
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const BarUcell()),
                            (route) => false);
                      },
                      child: const Text(
                        "Ucell",
                        style:
                            TextStyle(color: Color(0xff6b2d82), fontSize: 11),
                      ),
                    )),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  CircularProfileAvatar(
                    '',
                    radius: 35,
                    backgroundColor: const Color(0xffffc904),
                    elevation: 10,
                    child: const Center(
                        child: TextButton(
                      onPressed: null,
                      child: Text(
                        "Beeline",
                        style: TextStyle(color: Colors.white, fontSize: 11),
                      ),
                    )),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: const Color(0xffffc904),
                        boxShadow: [
                          const BoxShadow(
                              offset: Offset(0, 17),
                              blurRadius: 23,
                              spreadRadius: -13,
                              color: Colors.black54)
                        ]),
                    child: Center(
                        child: Row(
                      children: <Widget>[
                        const SizedBox(
                          width: 10,
                        ),
                        const Icon(
                          Icons.call,
                          color: Colors.white,
                          size: 20,
                        ),
                        TextButton(
                            onPressed: () {
                              FlutterPhoneDirectCaller.callNumber("0611");
                            },
                            child: const Text(
                              "Operator",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            )),
                        const SizedBox(
                          width: 20,
                        ),
                        const Text(
                          "|",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        TextButton(
                          onPressed: _launchUrl,
                          child: const Text("Kabinet",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20)),
                        ),
                        const Icon(
                          Icons.perm_identity,
                          color: Colors.white,
                          size: 20,
                        ),
                        const SizedBox(
                          width: 10,
                        )
                      ],
                    )),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    "Operator xizmatlari",
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: 100,
                    width: 150,
                    decoration: BoxDecoration(
                      boxShadow: [
                        const BoxShadow(
                            offset: Offset(0, 17),
                            blurRadius: 15,
                            spreadRadius: -13,
                            color: Colors.black54)
                      ],
                      borderRadius: BorderRadius.circular(16),
                      color: const Color(0xffffc904),
                    ),
                    child: const Center(
                        child: Text(
                      "Tarif rejalari",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    )),
                  ),
                  const SizedBox(
                    width: 40,
                  ),
                  Container(
                    width: 150,
                    height: 100,
                    decoration: BoxDecoration(
                      boxShadow: [
                        const BoxShadow(
                            offset: Offset(0, 17),
                            blurRadius: 15,
                            spreadRadius: -13,
                            color: Colors.black54)
                      ],
                      borderRadius: BorderRadius.circular(16),
                      color: const Color(0xffffc904),
                    ),
                    child: const Center(
                        child: Text(
                      "Internet \nto'plamlari",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    )),
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: 100,
                    width: 150,
                    decoration: BoxDecoration(
                      boxShadow: [
                        const BoxShadow(
                            offset: Offset(0, 17),
                            blurRadius: 15,
                            spreadRadius: -13,
                            color: Colors.black54)
                      ],
                      borderRadius: BorderRadius.circular(16),
                      color: const Color(0xffffc904),
                    ),
                    child: const Center(
                        child: Text(
                      "SMS\nto'plamlari",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    )),
                  ),
                  const SizedBox(
                    width: 40,
                  ),
                  Container(
                    width: 150,
                    height: 100,
                    decoration: BoxDecoration(
                      boxShadow: [
                        const BoxShadow(
                            offset: Offset(0, 17),
                            blurRadius: 15,
                            spreadRadius: -13,
                            color: Colors.black54)
                      ],
                      borderRadius: BorderRadius.circular(16),
                      color: const Color(0xffffc904),
                    ),
                    child: const Center(
                        child: Text(
                      "Daqiqa\nto'plamlari",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    )),
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: 100,
                    width: 150,
                    decoration: BoxDecoration(
                      boxShadow: [
                        const BoxShadow(
                            offset: Offset(0, 17),
                            blurRadius: 15,
                            spreadRadius: -13,
                            color: Colors.black54)
                      ],
                      borderRadius: BorderRadius.circular(16),
                      color: const Color(0xffffc904),
                    ),
                    child: const Center(
                        child: Text(
                      "USSD kodlari",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    )),
                  ),
                  const SizedBox(
                    width: 40,
                  ),
                  Container(
                    width: 150,
                    height: 100,
                    decoration: BoxDecoration(
                      boxShadow: [
                        const BoxShadow(
                            offset: Offset(0, 17),
                            blurRadius: 15,
                            spreadRadius: -13,
                            color: Colors.black54)
                      ],
                      borderRadius: BorderRadius.circular(16),
                      color: const Color(0xffffc904),
                    ),
                    child: const Center(
                        child: Text(
                      "Qo'shimcha\nxizmatlar",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    )),
                  )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }

  Future<void> _launchUrl() async {
    if (!await launchUrl(_url)) {
      throw 'Could not launch $_url';
    }
  }
}
