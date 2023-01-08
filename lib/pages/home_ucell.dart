// ignore_for_file: prefer_final_fields, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:ussd_kodlari/Mobiuz_full/Mobiuz_bar.dart';
import 'package:ussd_kodlari/beeline_full/beeline_bar.dart';
import 'package:ussd_kodlari/navigatorbar/bar.dart';
import 'package:ussd_kodlari/ucell_full/Operator%20xizmatlari/Daqiqa%20toplamlari/daqiqa_toplamlari_ucell.dart';
import 'package:ussd_kodlari/ucell_full/Operator%20xizmatlari/Internet%20toplamlari/internet_toplamlari_ucell.dart';
import 'package:ussd_kodlari/ucell_full/Operator%20xizmatlari/Qoshimcha%20xizmatlar/qoshimcha_xizmatlar_ucell.dart';
import 'package:ussd_kodlari/ucell_full/Operator%20xizmatlari/SMS%20toplamlari/sms_toplamlari_ucell.dart';
import 'package:ussd_kodlari/ucell_full/Operator%20xizmatlari/Tarif%20rejalari/Tarif_rejalari_ucell.dart';
import 'package:ussd_kodlari/ucell_full/Operator%20xizmatlari/USSD%20kodlari/ussd_kodlari_ucell.dart';

// ignore: camel_case_types
class UcellHome_page extends StatefulWidget {
  const UcellHome_page({super.key});

  @override
  State<UcellHome_page> createState() => _UcellHome_pageState();
}

// ignore: camel_case_types
class _UcellHome_pageState extends State<UcellHome_page> {
  @override
  // ignore: override_on_non_overriding_member
  final Uri _url = Uri.parse("https://ucell.uz/uz/subscribers");
  final Uri _telegram =
      Uri.parse("https://www.youtube.com/@BurhonjonTurdaliyev");
  final Uri _instagram =
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
          // ignore: prefer_const_literals_to_create_immutables
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
              color: Color(0xff6b2d82),
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
                    Icons.video_library,
                    size: 25,
                    color: Color(0xff6b2d82),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    "YouTube",
                    style: TextStyle(fontSize: 18, color: Color(0xff6b2d82)),
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
                  style: TextStyle(fontSize: 18, color: Color(0xff6b2d82)),
                )
              ]),
              onTap: _launchInstagram,
            ),
            const Divider(
              thickness: 1,
              color: Color(0xff6b2d82),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15, top: 10),
              child: Text("Adminga bog'lanish uchun"),
            ),
            ListTile(
              // ignore: prefer_const_literals_to_create_immutables
              title: Row(children: [
                const Icon(
                  Icons.call_outlined,
                  color: Color(0xff6b2d82),
                  size: 25,
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  "Admin",
                  style: TextStyle(fontSize: 18, color: Color(0xff6b2d82)),
                )
              ]),
              onTap: () {
                FlutterPhoneDirectCaller.callNumber("+998906936594");
              },
            )
          ],
        ),
      ),
      // ignore: duplicate_ignore
      appBar: AppBar(
        backgroundColor: Color(0xff6b2d82),
        centerTitle: true,
        title: Text(
          "USSD kodlar",
          style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
        ),
        shadowColor: Color.fromARGB(96, 81, 70, 70),
        elevation: 10,
      ),
      body: ListView(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
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
                            color: Color.fromARGB(255, 181, 173, 173)),
                        // ignore: prefer_const_literals_to_create_immutables
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(0, 17),
                              blurRadius: 23,
                              spreadRadius: -13,
                              color: Colors.black54)
                        ],
                        borderRadius: BorderRadius.circular(16),
                        color: Color.fromARGB(255, 255, 255, 255)),
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
                            Text(
                              "Ucell",
                              style: TextStyle(
                                color: Color(0xff6b2d82),
                                fontSize: 25,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: <Widget>[
                            Text("Hayotni yaxshilik sari o'zgartirib!")
                          ],
                        )
                      ],
                    )),
                  )
                ],
              ),
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
                        Duration(microseconds: 0);
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Bar()),
                            (route) => false);
                      },
                      child: Text(
                        "Uzmobile",
                        style: TextStyle(color: Colors.blue, fontSize: 11),
                      ),
                    )),
                    backgroundColor: Colors.white,
                    elevation: 10,
                  ),
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
                        Duration(microseconds: 0);
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const BarMobi()),
                            (route) => false);
                      },
                      child: Text(
                        "Mobiuz",
                        style: TextStyle(color: Colors.red, fontSize: 11),
                      ),
                    )),
                    backgroundColor: Colors.white,
                    elevation: 10,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  CircularProfileAvatar(
                    '',
                    radius: 35,
                    // ignore: sort_child_properties_last
                    child: Center(
                        child: TextButton(
                      onPressed: null,
                      child: Text(
                        "Ucell",
                        style: TextStyle(color: Colors.white, fontSize: 11),
                      ),
                    )),
                    backgroundColor: Color(0xff6b2d82),
                    elevation: 10,
                  ),
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
                        Duration(microseconds: 0);
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const BarBeeline()),
                            (route) => false);
                      },
                      child: Text(
                        "Beeline",
                        style:
                            TextStyle(color: Color(0xffffc904), fontSize: 11),
                      ),
                    )),
                    backgroundColor: Colors.white,
                    elevation: 10,
                  ),
                ],
              ),
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
                        color: Color(0xff6b2d82),
                        // ignore: prefer_const_literals_to_create_immutables
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(0, 17),
                              blurRadius: 23,
                              spreadRadius: -13,
                              color: Colors.black54)
                        ]),
                    child: Center(
                        child: Row(
                      children: <Widget>[
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.call,
                          color: Colors.white,
                          size: 20,
                        ),
                        TextButton(
                            onPressed: () {
                              FlutterPhoneDirectCaller.callNumber("8123");
                            },
                            child: Text(
                              "Operator",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            )),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "|",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        TextButton(
                          onPressed: _launchUrl,
                          child: Text("Kabinet",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20)),
                        ),
                        Icon(
                          Icons.perm_identity,
                          color: Colors.white,
                          size: 20,
                        ),
                        SizedBox(
                          width: 10,
                        )
                      ],
                    )),
                  ),
                ],
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                // ignore: prefer_const_literals_to_create_immutables
                children: <Widget>[
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Operator xizmatlari",
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  )
                ],
              ),
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
                              builder: (context) => Tarif_rejalari_ucell()));
                    },
                    child: Container(
                      height: 100,
                      width: 150,
                      decoration: BoxDecoration(
                        // ignore: prefer_const_literals_to_create_immutables
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(0, 17),
                              blurRadius: 15,
                              spreadRadius: -13,
                              color: Colors.black54)
                        ],
                        borderRadius: BorderRadius.circular(16),
                        color: Color(0xff6b2d82),
                      ),
                      child: Center(
                          child: Text(
                        "Tarif rejalari",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      )),
                    ),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  Internet_toplamlari_ucell()));
                    },
                    child: Container(
                      width: 150,
                      height: 100,
                      decoration: BoxDecoration(
                        // ignore: prefer_const_literals_to_create_immutables
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(0, 17),
                              blurRadius: 15,
                              spreadRadius: -13,
                              color: Colors.black54)
                        ],
                        borderRadius: BorderRadius.circular(16),
                        color: Color(0xff6b2d82),
                      ),
                      child: Center(
                          child: Text(
                        "Internet \nto'plamlari",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      )),
                    ),
                  )
                ],
              ),
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
                              builder: (context) => sms_toplamlar_ucell()));
                    },
                    child: Container(
                      height: 100,
                      width: 150,
                      decoration: BoxDecoration(
                        // ignore: prefer_const_literals_to_create_immutables
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(0, 17),
                              blurRadius: 15,
                              spreadRadius: -13,
                              color: Colors.black54)
                        ],
                        borderRadius: BorderRadius.circular(16),
                        color: Color(0xff6b2d82),
                      ),
                      child: Center(
                          child: Text(
                        "SMS\nto'plamlari",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      )),
                    ),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => daqiqa_toplamlari_ucell()));
                    },
                    child: Container(
                      width: 150,
                      height: 100,
                      decoration: BoxDecoration(
                        // ignore: prefer_const_literals_to_create_immutables
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(0, 17),
                              blurRadius: 15,
                              spreadRadius: -13,
                              color: Colors.black54)
                        ],
                        borderRadius: BorderRadius.circular(16),
                        color: Color(0xff6b2d82),
                      ),
                      child: Center(
                          child: Text(
                        "Daqiqa\nto'plamlari",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      )),
                    ),
                  )
                ],
              ),
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
                              builder: (context) => ussd_kodlari_ucell()));
                    },
                    child: Container(
                      height: 100,
                      width: 150,
                      decoration: BoxDecoration(
                        // ignore: prefer_const_literals_to_create_immutables
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(0, 17),
                              blurRadius: 15,
                              spreadRadius: -13,
                              color: Colors.black54)
                        ],
                        borderRadius: BorderRadius.circular(16),
                        color: Color(0xff6b2d82),
                      ),
                      child: Center(
                          child: Text(
                        "USSD kodlari",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      )),
                    ),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  qoshimcha_xizmatlar_ucell()));
                    },
                    child: Container(
                      width: 150,
                      height: 100,
                      decoration: BoxDecoration(
                        // ignore: prefer_const_literals_to_create_immutables
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(0, 17),
                              blurRadius: 15,
                              spreadRadius: -13,
                              color: Colors.black54)
                        ],
                        borderRadius: BorderRadius.circular(16),
                        color: Color(0xff6b2d82),
                      ),
                      child: Center(
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
