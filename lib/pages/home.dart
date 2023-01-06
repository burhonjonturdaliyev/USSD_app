// ignore_for_file: prefer_final_fields, prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:ussd_kodlari/Mobiuz_full/Mobiuz_bar.dart';
import 'package:ussd_kodlari/beeline_full/beeline_bar.dart';
import 'package:ussd_kodlari/packages/tarif_rejalari.dart';
import 'package:ussd_kodlari/packages/uzmobile_operator/daqiqa_toplamlari.dart';
import 'package:ussd_kodlari/packages/uzmobile_operator/internet_tuplamlari.dart';
import 'package:ussd_kodlari/packages/uzmobile_operator/qoshimcha_xizmatlar.dart';
import 'package:ussd_kodlari/packages/uzmobile_operator/sms_tuplamlari.dart';
import 'package:ussd_kodlari/packages/uzmobile_operator/ussd_kodlari/ussd_kodlari.dart';
import 'package:ussd_kodlari/ucell_full/ucell_bar.dart';

// ignore: camel_case_types
class Home_page extends StatefulWidget {
  const Home_page({super.key});

  @override
  State<Home_page> createState() => _Home_pageState();
}

// ignore: camel_case_types
class _Home_pageState extends State<Home_page> {
  final Uri _uri = Uri.parse("https://uztelecom.uz/index.php");
  String name = "Uzmobile";
  String info = "Ishonchli mobil aloqa operatori";
  String operator = "1099";
  String color = "blue";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // ignore: prefer_const_literals_to_create_immutables
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: GestureDetector(
              onTap: null,
              child: Icon(
                Icons.share,
                color: Colors.white,
              ),
            ),
          )
        ],
        backgroundColor: Colors.blue,
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
                              name,
                              style: TextStyle(
                                color: Colors.blue,
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
                          children: <Widget>[Text(info)],
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
                      onPressed: null,
                      child: Text(
                        "Uzmobile",
                        style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontSize: 11),
                      ),
                    )),
                    backgroundColor: Colors.blue,
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
                        Duration(milliseconds: 0);
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(builder: (context) => BarMobi()),
                            (route) => false);
                      },
                      child: Text(
                        "Mobiuz",
                        style: TextStyle(
                            color: Color.fromARGB(255, 255, 0, 0),
                            fontSize: 11),
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
                            MaterialPageRoute(builder: (context) => BarUcell()),
                            (route) => false);
                      },
                      child: Text(
                        "Ucell",
                        style:
                            TextStyle(color: Color(0xff6b2d82), fontSize: 11),
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
                                builder: (context) => BarBeeline()),
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
                        color: Colors.blue,
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
                              FlutterPhoneDirectCaller.callNumber(operator);
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
                            builder: (context) => Tarif_rejalari(),
                          ));
                    },
                    child: Container(
                      height: 100,
                      width: 150,
                      decoration: BoxDecoration(
                          // ignore: prefer_const_literals_to_create_immutables
                          boxShadow: [
                            BoxShadow(
                                offset: const Offset(0, 17),
                                blurRadius: 15,
                                spreadRadius: -13,
                                color: Colors.black54)
                          ],
                          borderRadius: BorderRadius.circular(16),
                          color: Colors.blue),
                      child: Center(
                          child: Text(
                        "Tarif rejalari",
                        style:
                            const TextStyle(color: Colors.white, fontSize: 16),
                      )),
                    ),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Internet_tuplamlari()),
                          (route) => true);
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
                          color: Colors.blue),
                      child: Center(
                          child: Text(
                        "Internet \nto'plamlari",
                        style:
                            const TextStyle(color: Colors.white, fontSize: 16),
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
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                              builder: (context) => sms_tuplamlari()),
                          (route) => true);
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
                          color: Colors.blue),
                      child: Center(
                          child: Text(
                        "SMS\nto'plamlari",
                        style:
                            const TextStyle(color: Colors.white, fontSize: 16),
                      )),
                    ),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Daqiqa_tuplamlari()),
                          (route) => true);
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
                          color: Colors.blue),
                      child: Center(
                          child: Text(
                        "Daqiqa\nto'plamlari",
                        style:
                            const TextStyle(color: Colors.white, fontSize: 16),
                      )),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                              builder: (context) => USSD_kodlari()),
                          (route) => true);
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
                          color: Colors.blue),
                      child: Center(
                          child: Text(
                        "USSD kodlari",
                        style:
                            const TextStyle(color: Colors.white, fontSize: 16),
                      )),
                    ),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Qoshimcha_xizmatlar()),
                          (route) => true);
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
                          color: Colors.blue),
                      child: Center(
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

  Future<void> _launchUrl() async {
    if (!await launchUrl(_uri)) {
      throw "Could not open this page $_uri";
    }
  }
}
