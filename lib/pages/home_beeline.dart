// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:ussd_kodlari/Mobiuz_full/Mobiuz_bar.dart';
import 'package:ussd_kodlari/beeline_full/Operator_xizmatlari/daqiqa_toplamlari/daqiqa_toplamlari_beeline.dart';
import 'package:ussd_kodlari/beeline_full/Operator_xizmatlari/internet_toplamlari/internet_toplamlari_beeline.dart';
import 'package:ussd_kodlari/beeline_full/Operator_xizmatlari/qoshimcha_xizmatlar/qoshimcha_xizmatlar_beeline.dart';
import 'package:ussd_kodlari/beeline_full/Operator_xizmatlari/sms_toplamlari/sms_toplamlari_beeline.dart';
import 'package:ussd_kodlari/beeline_full/Operator_xizmatlari/tarif_rejalari/tarif_rejalari_beeline.dart';
import 'package:ussd_kodlari/beeline_full/Operator_xizmatlari/ussd_kodlari/ussd_kodlari_beeline.dart';
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
  final Uri _telegram =
      Uri.parse("https://www.youtube.com/@BurhonjonTurdaliyev");
  final Uri _instagram =
      Uri.parse("https://www.instagram.com/burhonjon_turdaliyev_");
      Uri.parse("https://www.instagram.com/burhonjon_turdaliyev_/");

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        width: 250,
        backgroundColor: Colors.white,
        child: ListView(
          children: [
            SizedBox(
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
            const Divider(
              thickness: 1,
              color: Color(0xffffc904),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15, top: 10),
              child: Text("Ommaviy"),
            ),
            ListTile(
              title: Row(
                children: [
                  const Icon(
                    Icons.video_library,
                    size: 25,
                    color: Color(0xffffc904),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    "YouTube",
                    style: TextStyle(fontSize: 18, color: Color(0xffffc904)),
                  ),
                ],
              ),
              onTap: _launchTelegram,
            ),
            ListTile(
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
                  style: TextStyle(fontSize: 18, color: Color(0xffffc904)),
                )
              ]),
              onTap: _launchInstagram,
            ),
            const Divider(
              thickness: 1,
              color: Color(0xffffc904),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15, top: 10),
              child: Text("Adminga bog'lanish uchun"),
            ),
            ListTile(
              title: Row(children: [
                const Icon(
                  Icons.call_outlined,
                  color: Color(0xffffc904),
                  size: 25,
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  "Admin",
                  style: TextStyle(fontSize: 18, color: Color(0xffffc904)),
                )
              ]),
              onTap: () {
                FlutterPhoneDirectCaller.callNumber("+998906936594");
              },
            )
          ],
        ),
      ),
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
                            const Text("Yetakchi. Ishonchli! Innovatsion!")
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
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const tarif_rejalari_beeline()));
                    },
                    child: Container(
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
                                  const internet_toplamlari_beeline()));
                    },
                    child: Container(
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
                              builder: (context) =>
                                  const sms_toplamlari_beeline()));
                    },
                    child: Container(
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
                                  const daqiqa_toplamlari_beeline()));
                    },
                    child: Container(
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
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const ussd_kodlari_beeline())),
                    child: Container(
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
                  ),
                  const SizedBox(
                    width: 40,
                  ),
                  GestureDetector(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const qoshimcha_xizmatlar_beeline())),
                    child: Container(
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
