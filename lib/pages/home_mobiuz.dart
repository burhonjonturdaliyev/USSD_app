// ignore_for_file: annotate_overrides, prefer_final_fields

import 'package:flutter/material.dart';
import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:ussd_kodlari/Mobiuz_full/Operator%20xizmatlari/Daqiqa/daqiqa_mobiuz.dart';
import 'package:ussd_kodlari/Mobiuz_full/Operator%20xizmatlari/Qoshimcha%20xizmatlar/qoshimcha_xizmatlar_mobiuz.dart';
import 'package:ussd_kodlari/Mobiuz_full/Operator%20xizmatlari/SMS/sms_mobiuz.dart';
import 'package:ussd_kodlari/Mobiuz_full/Operator%20xizmatlari/USSD_codelari/ussd_kodlari.dart';
import 'package:ussd_kodlari/Mobiuz_full/Operator%20xizmatlari/internet/internet_mobiuz.dart';
import 'package:ussd_kodlari/beeline_full/beeline_bar.dart';
import 'package:ussd_kodlari/navigatorbar/bar.dart';
import 'package:ussd_kodlari/ucell_full/ucell_bar.dart';

import '../Mobiuz_full/Operator xizmatlari/tarif rejalari/tarif_mobiuz.dart';

// ignore: camel_case_types
class MobiuzHome_page extends StatefulWidget {
  const MobiuzHome_page({super.key});

  @override
  State<MobiuzHome_page> createState() => _MobiuzHome_pageState();
}

// ignore: camel_case_types
class _MobiuzHome_pageState extends State<MobiuzHome_page> {
  final Uri _telegram = Uri.parse("https://t.me/burkhan_dev");
  final Uri _instagram =
      Uri.parse("https://www.instagram.com/burhonjon_turdaliyev_/");
  final Uri _admin = Uri.parse("https://t.me/TBA_003");
  final Uri _url = Uri.parse("https://mobi.uz/uz/");

  Future<void> _launchUrl() async {
    if (!await launchUrl(_url)) {
      throw 'Could not launch $_url';
    }
  }

  Future<void> _launchTelegram() async {
    if (!await launchUrl(_telegram)) {
      throw "Could not open this page $_telegram, Please try later or connect again";
    }
  }

  Future<void> _launchInstagram() async {
    if (!await launchUrl(_instagram)) {
      throw "Could not open this page $_instagram, Please try later or connect again";
    }
  }

  Future<void> _launchAdmin() async {
    if (!await launchUrl(_admin)) {
      throw "Could not open this page $_admin, Please try later or connect again";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        width: 250,
        backgroundColor: Colors.white,
        child: ListView(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Expanded(
              child: Container(
                decoration: const BoxDecoration(color: Colors.white),
                height: 200,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "Images/all.png",
                      width: 200,
                    )
                  ],
                ),
              ),
            ),
            const Divider(
              thickness: 1,
              color: Colors.red,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15, top: 10),
              child: Text("Ommaviy"),
            ),
            ListTile(
              title: Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const Icon(
                    Icons.telegram,
                    size: 25,
                    color: Colors.blue,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    "Telegram",
                    style: TextStyle(fontSize: 18, color: Colors.red),
                  ),
                ],
              ),
              onTap: _launchTelegram,
            ),
            ListTile(
              // ignore: prefer_const_literals_to_create_immutables
              title: Row(children: [
                Image.asset(
                  "Images/insta.png",
                  width: 25,
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  "Instagram",
                  style: TextStyle(fontSize: 18, color: Colors.red),
                )
              ]),
              onTap: _launchInstagram,
            ),
            const Divider(
              thickness: 1,
              color: Colors.red,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15, top: 10),
              child: Text("Adminga bog'lanish uchun"),
            ),
            ListTile(
              // ignore: prefer_const_literals_to_create_immutables
              title: Row(children: [
                const Icon(
                  Icons.telegram,
                  color: Colors.blue,
                  size: 25,
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  "Admin",
                  style: TextStyle(fontSize: 18, color: Colors.red),
                )
              ]),
              onTap: _launchAdmin,
            )
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.red,
        centerTitle: true,
        // ignore: prefer_const_constructors
        title: Text(
          "USSD kodlar",
          style: const TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
        ),
        shadowColor: const Color.fromARGB(96, 81, 70, 70),
        elevation: 10,
      ),
      body: ListView(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              // ignore: prefer_const_constructors
              SizedBox(
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
                          // ignore: prefer_const_constructors
                          BoxShadow(
                              offset: const Offset(0, 17),
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
                            // ignore: prefer_const_constructors
                            Text(
                              "Mobiuz",
                              style: const TextStyle(
                                color: Colors.red,
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
                            const Text("Raqamli imkoniyatlar sari!")
                          ],
                        )
                      ],
                    )),
                  )
                ],
              ),
              // ignore: prefer_const_constructors
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CircularProfileAvatar(
                    '',
                    radius: 35,
                    // ignore: sort_child_properties_last
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
                    backgroundColor: Colors.white,
                    elevation: 10,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  CircularProfileAvatar(
                    '',
                    radius: 35,
                    backgroundColor: Colors.red,
                    elevation: 10,
                    // ignore: sort_child_properties_last
                    // ignore: prefer_const_constructors
                    child: Center(
                        child: const TextButton(
                      onPressed: null,
                      child: Text(
                        "Mobiuz",
                        style: TextStyle(color: Colors.white, fontSize: 11),
                      ),
                    )),
                  ),
                  // ignore: prefer_const_constructors
                  SizedBox(
                    width: 20,
                  ),
                  CircularProfileAvatar(
                    '',
                    radius: 35,
                    // ignore: sort_child_properties_last
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
                      // ignore: prefer_const_constructors
                      child: Text(
                        "Ucell",
                        // ignore: prefer_const_constructors
                        style: const TextStyle(
                            color: Color(0xff6b2d82), fontSize: 11),
                      ),
                    )),
                    backgroundColor: Colors.white,
                    elevation: 10,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  CircularProfileAvatar(
                    '',
                    radius: 35,
                    // ignore: sort_child_properties_last
                    child: Center(
                        child: TextButton(
                      onPressed: () {
                        const Duration(microseconds: 0);
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const BarBeeline()),
                            (route) => false);
                      },
                      // ignore: prefer_const_constructors
                      child: Text(
                        "Beeline",
                        style: const TextStyle(
                            color: Color(0xffffc904), fontSize: 11),
                      ),
                    )),
                    backgroundColor: Colors.white,
                    elevation: 10,
                  ),
                ],
              ),
              // ignore: prefer_const_constructors
              SizedBox(
                height: 20,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.red,
                        // ignore: prefer_const_literals_to_create_immutables
                        boxShadow: [
                          // ignore: prefer_const_constructors
                          BoxShadow(
                              offset: const Offset(0, 17),
                              blurRadius: 23,
                              spreadRadius: -13,
                              color: Colors.black54)
                        ]),
                    child: Center(
                        child: Row(
                      children: <Widget>[
                        // ignore: prefer_const_constructors
                        SizedBox(
                          width: 10,
                        ),
                        // ignore: prefer_const_constructors
                        Icon(
                          Icons.call,
                          color: Colors.white,
                          size: 20,
                        ),
                        TextButton(
                            onPressed: () {
                              FlutterPhoneDirectCaller.callNumber("0890");
                            },
                            // ignore: prefer_const_constructors
                            child: Text(
                              "Operator",
                              style: const TextStyle(
                                  color: Colors.white, fontSize: 20),
                            )),
                        const SizedBox(
                          width: 20,
                        ),
                        // ignore: prefer_const_constructors
                        Text(
                          "|",
                          style: const TextStyle(
                              color: Colors.white, fontSize: 20),
                        ),
                        // ignore: prefer_const_constructors
                        SizedBox(
                          width: 20,
                        ),
                        TextButton(
                          onPressed: _launchUrl,
                          // ignore: prefer_const_constructors
                          child: Text("Kabinet",
                              style: const TextStyle(
                                  color: Colors.white, fontSize: 20)),
                        ),
                        // ignore: prefer_const_constructors
                        Icon(
                          Icons.perm_identity,
                          color: Colors.white,
                          size: 20,
                        ),
                        // ignore: prefer_const_constructors
                        SizedBox(
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
                // ignore: prefer_const_literals_to_create_immutables
                children: <Widget>[
                  const SizedBox(
                    width: 10,
                  ),
                  // ignore: prefer_const_constructors
                  Text(
                    "Operator xizmatlari",
                    style: const TextStyle(color: Colors.black, fontSize: 20),
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Tarif_Mobiuz()));
                    },
                    child: Container(
                      height: 100,
                      width: 150,
                      decoration: BoxDecoration(
                          // ignore: prefer_const_literals_to_create_immutables
                          boxShadow: [
                            // ignore: prefer_const_constructors
                            BoxShadow(
                                offset: const Offset(0, 17),
                                blurRadius: 15,
                                spreadRadius: -13,
                                color: Colors.black54)
                          ],
                          borderRadius: BorderRadius.circular(16),
                          color: Colors.red),
                      // ignore: prefer_const_constructors
                      child: Center(
                          // ignore: prefer_const_constructors
                          child: Text(
                        "Tarif rejalari",
                        style:
                            const TextStyle(color: Colors.white, fontSize: 16),
                      )),
                    ),
                  ),
                  const SizedBox(
                    width: 40,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const Internet_toplamlari_mobi(),
                          ));
                    },
                    child: Container(
                      width: 150,
                      height: 100,
                      decoration: BoxDecoration(
                          // ignore: prefer_const_literals_to_create_immutables
                          boxShadow: [
                            // ignore: prefer_const_constructors
                            BoxShadow(
                                offset: const Offset(0, 17),
                                blurRadius: 15,
                                spreadRadius: -13,
                                color: Colors.black54)
                          ],
                          borderRadius: BorderRadius.circular(16),
                          color: Colors.red),
                      // ignore: prefer_const_constructors
                      child: Center(
                          // ignore: prefer_const_constructors
                          child: Text(
                        "Internet \nto'plamlari",
                        style:
                            const TextStyle(color: Colors.white, fontSize: 16),
                      )),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SMS_mobiuz(),
                          ));
                    },
                    child: Container(
                      height: 100,
                      width: 150,
                      decoration: BoxDecoration(
                          // ignore: prefer_const_literals_to_create_immutables
                          boxShadow: [
                            // ignore: prefer_const_constructors
                            BoxShadow(
                                offset: const Offset(0, 17),
                                blurRadius: 15,
                                spreadRadius: -13,
                                color: Colors.black54)
                          ],
                          borderRadius: BorderRadius.circular(16),
                          color: Colors.red),
                      // ignore: prefer_const_constructors
                      child: Center(
                          child: const Text(
                        "SMS\nto'plamlari",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      )),
                    ),
                  ),
                  // ignore: prefer_const_constructors
                  SizedBox(
                    width: 40,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) =>
                                  const Daqiqalar_mobiuz())));
                    },
                    child: Container(
                      width: 150,
                      height: 100,
                      decoration: BoxDecoration(
                          // ignore: prefer_const_literals_to_create_immutables
                          boxShadow: [
                            // ignore: prefer_const_constructors
                            BoxShadow(
                                offset: const Offset(0, 17),
                                blurRadius: 15,
                                spreadRadius: -13,
                                color: Colors.black54)
                          ],
                          borderRadius: BorderRadius.circular(16),
                          color: Colors.red),
                      // ignore: prefer_const_constructors
                      child: Center(
                          child: const Text(
                        "Daqiqa\nto'plamlari",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      )),
                    ),
                  )
                ],
              ),
              // ignore: prefer_const_constructors
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const USSD_Mobiuz_kodlari()));
                    },
                    child: Container(
                      height: 100,
                      width: 150,
                      decoration: BoxDecoration(
                          // ignore: prefer_const_literals_to_create_immutables
                          boxShadow: [
                            // ignore: prefer_const_constructors
                            BoxShadow(
                                offset: const Offset(0, 17),
                                blurRadius: 15,
                                spreadRadius: -13,
                                color: Colors.black54)
                          ],
                          borderRadius: BorderRadius.circular(16),
                          color: Colors.red),
                      // ignore: prefer_const_constructors
                      child: Center(
                          // ignore: prefer_const_constructors
                          child: Text(
                        "USSD kodlari",
                        style:
                            const TextStyle(color: Colors.white, fontSize: 16),
                      )),
                    ),
                  ),
                  // ignore: prefer_const_constructors
                  SizedBox(
                    width: 40,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const Qoshimcha_xizmatlar_mobiuz()));
                    },
                    child: Container(
                      width: 150,
                      height: 100,
                      decoration: BoxDecoration(
                          // ignore: prefer_const_literals_to_create_immutables
                          boxShadow: [
                            // ignore: prefer_const_constructors
                            BoxShadow(
                                offset: const Offset(0, 17),
                                blurRadius: 15,
                                spreadRadius: -13,
                                color: Colors.black54)
                          ],
                          borderRadius: BorderRadius.circular(16),
                          color: Colors.red),
                      // ignore: prefer_const_constructors
                      child: Center(
                          // ignore: prefer_const_constructors
                          child: Text(
                        "Qo'shimcha\nxizmatlar",
                        style:
                            const TextStyle(color: Colors.white, fontSize: 16),
                      )),
                    ),
                  )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
