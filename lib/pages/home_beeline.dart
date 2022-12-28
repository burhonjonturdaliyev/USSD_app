// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:ussd_kodlari/pages/home_mobiuz.dart';
import 'package:ussd_kodlari/pages/home_ucell.dart';

import 'home.dart';

// ignore: camel_case_types
class Beeline_Homepage extends StatefulWidget {
  const Beeline_Homepage({super.key});

  @override
  State<Beeline_Homepage> createState() => _Beeline_HomepageState();
}

// ignore: camel_case_types
class _Beeline_HomepageState extends State<Beeline_Homepage> {
  final Uri _url = Uri.parse('https://beeline.uz/uz');
  final GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        centerTitle: true,
        // ignore: prefer_const_constructors
        title: Text(
          "USSD kodlar",
          style: const TextStyle(color: Colors.black87),
        ),
        shadowColor: const Color.fromARGB(96, 81, 70, 70),
        elevation: 10,
      ),
      bottomNavigationBar: CurvedNavigationBar(
        key: _bottomNavigationKey,
        index: 0,
        height: 55.0,
        // ignore: prefer_const_literals_to_create_immutables
        items: <Widget>[
          const Icon(
            Icons.home,
            size: 30,
            color: Colors.black87,
          ),
          const Icon(
            Icons.contact_page,
            size: 30,
            color: Colors.black87,
          ),
          const Icon(
            Icons.perm_device_information_outlined,
            size: 30,
            color: Colors.black87,
          ),
          const Icon(
            Icons.perm_identity,
            size: 30,
            color: Colors.black87,
          ),
        ],
        color: Colors.yellow,
        buttonBackgroundColor: Colors.yellow,
        backgroundColor: Colors.white,
        animationCurve: Curves.easeInOut,
        animationDuration: const Duration(milliseconds: 500),
        onTap: null,
        letIndexChange: (index) => true,
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
                        // ignore: prefer_const_literals_to_create_immutables
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
                          // ignore: prefer_const_literals_to_create_immutables
                          children: <Widget>[
                            const Text(
                              "Beeline",
                              style: TextStyle(
                                color: Colors.yellow,
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
                          // ignore: prefer_const_literals_to_create_immutables
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
                                builder: (context) => const Home_page()),
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
                                builder: (context) => const MobiuzHome_page()),
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
                                builder: (context) => const UcellHome_page()),
                            (route) => false);
                      },
                      child: const Text(
                        "Ucell",
                        style: TextStyle(
                            color: Color.fromARGB(255, 12, 1, 51),
                            fontSize: 11),
                      ),
                    )),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  CircularProfileAvatar(
                    '',
                    radius: 35,
                    backgroundColor: Colors.yellow,
                    elevation: 10,
                    child: const Center(
                        child: TextButton(
                      onPressed: null,
                      child: Text(
                        "Beeline",
                        style: TextStyle(color: Colors.black, fontSize: 11),
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
                        color: Colors.yellow,
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
                          color: Colors.black87,
                          size: 20,
                        ),
                        TextButton(
                            onPressed: () {
                              FlutterPhoneDirectCaller.callNumber("0611");
                            },
                            child: const Text(
                              "Operator",
                              style: TextStyle(
                                  color: Colors.black87, fontSize: 20),
                            )),
                        const SizedBox(
                          width: 20,
                        ),
                        const Text(
                          "|",
                          style: TextStyle(color: Colors.black87, fontSize: 20),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        TextButton(
                          onPressed: _launchUrl,
                          child: const Text("Kabinet",
                              style: TextStyle(
                                  color: Colors.black87, fontSize: 20)),
                        ),
                        const Icon(
                          Icons.perm_identity,
                          color: Colors.black87,
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
                        color: Colors.yellow),
                    child: const Center(
                        child: Text(
                      "Tarif rejalari",
                      style: TextStyle(color: Colors.black),
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
                        color: Colors.yellow),
                    child: const Center(
                        child: Text(
                      "Internet \nto'plamlari",
                      style: TextStyle(color: Colors.black),
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
                        color: Colors.yellow),
                    child: const Center(
                        child: Text(
                      "SMS\nto'plamlari",
                      style: TextStyle(color: Colors.black),
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
                        color: Colors.yellow),
                    child: const Center(
                        child: Text(
                      "Daqiqa\nto'plamlari",
                      style: TextStyle(color: Colors.black),
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
                        color: Colors.yellow),
                    child: const Center(
                        child: Text(
                      "USSD kodlari",
                      style: TextStyle(color: Colors.black),
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
                        color: Colors.yellow),
                    child: const Center(
                        child: Text(
                      "Qo'shimcha\nxizmatlar",
                      style: TextStyle(color: Colors.black),
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
