// ignore_for_file: annotate_overrides, prefer_final_fields

import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:ussd_kodlari/navigatorbar/bar.dart';
import 'package:ussd_kodlari/pages/home_ucell.dart';

import 'home.dart';
import 'home_beeline.dart';

// ignore: camel_case_types
class MobiuzHome_page extends StatefulWidget {
  const MobiuzHome_page({super.key});

  @override
  State<MobiuzHome_page> createState() => _MobiuzHome_pageState();
}

class _MobiuzHome_pageState extends State<MobiuzHome_page> {
  final Uri _url = Uri.parse("https://mobi.uz/uz/");
  @override
  int _page = 0;
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
  Widget build(BuildContext context) {
    return Scaffold(
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
      bottomNavigationBar: CurvedNavigationBar(
        key: _bottomNavigationKey,
        index: 0,
        height: 55.0,
        // ignore: prefer_const_literals_to_create_immutables
        items: <Widget>[
          const Icon(
            Icons.home,
            size: 30,
            color: Colors.white,
          ),
          const Icon(
            Icons.contact_page,
            size: 30,
            color: Colors.white,
          ),
          const Icon(
            Icons.perm_device_information_outlined,
            size: 30,
            color: Colors.white,
          ),
          // ignore: prefer_const_constructors
          Icon(
            Icons.perm_identity,
            size: 30,
            color: Colors.white,
          ),
        ],
        color: Colors.red,
        buttonBackgroundColor: Colors.red,
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
                            const Text("Sifatli mobil aloqa operatori!")
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
                            MaterialPageRoute(builder: (context) => Bar()),
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
                                builder: (context) => const UcellHome_page()),
                            (route) => false);
                      },
                      // ignore: prefer_const_constructors
                      child: Text(
                        "Ucell",
                        // ignore: prefer_const_constructors
                        style: TextStyle(
                            color: const Color.fromARGB(255, 12, 1, 51),
                            fontSize: 11),
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
                                builder: (context) => const Beeline_Homepage()),
                            (route) => false);
                      },
                      // ignore: prefer_const_constructors
                      child: Text(
                        "Beeline",
                        style:
                            const TextStyle(color: Colors.yellow, fontSize: 11),
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
                    onTap: () {},
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
                        style: const TextStyle(color: Colors.white),
                      )),
                    ),
                  ),
                  const SizedBox(
                    width: 40,
                  ),
                  Container(
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
                      style: const TextStyle(color: Colors.white),
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
                        // ignore: prefer_const_literals_to_create_immutables
                        boxShadow: [
                          // ignore: prefer_const_constructors
                          BoxShadow(
                              offset: Offset(0, 17),
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
                      style: TextStyle(color: Colors.white),
                    )),
                  ),
                  // ignore: prefer_const_constructors
                  SizedBox(
                    width: 40,
                  ),
                  Container(
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
                      style: TextStyle(color: Colors.white),
                    )),
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
                  Container(
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
                      style: const TextStyle(color: Colors.white),
                    )),
                  ),
                  // ignore: prefer_const_constructors
                  SizedBox(
                    width: 40,
                  ),
                  Container(
                    width: 150,
                    height: 100,
                    decoration: BoxDecoration(
                        // ignore: prefer_const_literals_to_create_immutables
                        boxShadow: [
                          // ignore: prefer_const_constructors
                          BoxShadow(
                              offset: Offset(0, 17),
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
                      style: const TextStyle(color: Colors.white),
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
