import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:ussd_kodlari/pages/home_mobiuz.dart';
import 'package:ussd_kodlari/pages/home_ucell.dart';

import 'home.dart';

class Beeline_Homepage extends StatefulWidget {
  const Beeline_Homepage({super.key});

  @override
  State<Beeline_Homepage> createState() => _Beeline_HomepageState();
}

class _Beeline_HomepageState extends State<Beeline_Homepage> {
  final Uri _url = Uri.parse('https://beeline.uz/uz');
  @override
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        centerTitle: true,
        title: Text(
          "USSD kodlar",
          style: TextStyle(color: Colors.black87),
        ),
        shadowColor: Color.fromARGB(96, 81, 70, 70),
        elevation: 10,
      ),
      bottomNavigationBar: CurvedNavigationBar(
        key: _bottomNavigationKey,
        index: 0,
        height: 55.0,
        items: <Widget>[
          Icon(
            Icons.home,
            size: 30,
            color: Colors.black87,
          ),
          Icon(
            Icons.contact_page,
            size: 30,
            color: Colors.black87,
          ),
          Icon(
            Icons.perm_device_information_outlined,
            size: 30,
            color: Colors.black87,
          ),
          Icon(
            Icons.perm_identity,
            size: 30,
            color: Colors.black87,
          ),
        ],
        color: Colors.yellow,
        buttonBackgroundColor: Colors.yellow,
        backgroundColor: Colors.white,
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 500),
        onTap: null,
        letIndexChange: (index) => true,
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
                          children: <Widget>[
                            Text(
                              "Beeline",
                              style: TextStyle(
                                color: Colors.yellow,
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
                          children: <Widget>[
                            Text("Sifatli va ishonchli mobil aloqa operatori!")
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
                    child: Center(
                        child: TextButton(
                      onPressed: () {
                        Duration(microseconds: 1);
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Home_page()));
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
                    child: Center(
                        child: TextButton(
                      onPressed: () {
                        Duration(microseconds: 1);
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MobiuzHome_page()));
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
                    child: Center(
                        child: TextButton(
                      onPressed: () {
                        Duration(microseconds: 1);
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => UcellHome_page()));
                      },
                      child: Text(
                        "Ucell",
                        style: TextStyle(
                            color: Color.fromARGB(255, 12, 1, 51),
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
                    child: Center(
                        child: TextButton(
                      onPressed: null,
                      child: Text(
                        "Beeline",
                        style: TextStyle(color: Colors.black, fontSize: 11),
                      ),
                    )),
                    backgroundColor: Colors.yellow,
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
                        color: Colors.yellow,
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
                          color: Colors.black87,
                          size: 20,
                        ),
                        TextButton(
                            onPressed: () {
                              FlutterPhoneDirectCaller.callNumber("0611");
                            },
                            child: Text(
                              "Operator",
                              style: TextStyle(
                                  color: Colors.black87, fontSize: 20),
                            )),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "|",
                          style: TextStyle(color: Colors.black87, fontSize: 20),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        TextButton(
                          onPressed: _launchUrl,
                          child: Text("Kabinet",
                              style: TextStyle(
                                  color: Colors.black87, fontSize: 20)),
                        ),
                        Icon(
                          Icons.perm_identity,
                          color: Colors.black87,
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
                  Container(
                    height: 100,
                    width: 150,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(0, 17),
                              blurRadius: 15,
                              spreadRadius: -13,
                              color: Colors.black54)
                        ],
                        borderRadius: BorderRadius.circular(16),
                        color: Colors.yellow),
                    child: Center(
                        child: Text(
                      "Tarif rejalari",
                      style: TextStyle(color: Colors.black),
                    )),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Container(
                    width: 150,
                    height: 100,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(0, 17),
                              blurRadius: 15,
                              spreadRadius: -13,
                              color: Colors.black54)
                        ],
                        borderRadius: BorderRadius.circular(16),
                        color: Colors.yellow),
                    child: Center(
                        child: Text(
                      "Internet \nto'plamlari",
                      style: TextStyle(color: Colors.black),
                    )),
                  )
                ],
              ),
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
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(0, 17),
                              blurRadius: 15,
                              spreadRadius: -13,
                              color: Colors.black54)
                        ],
                        borderRadius: BorderRadius.circular(16),
                        color: Colors.yellow),
                    child: Center(
                        child: Text(
                      "SMS\nto'plamlari",
                      style: TextStyle(color: Colors.black),
                    )),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Container(
                    width: 150,
                    height: 100,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(0, 17),
                              blurRadius: 15,
                              spreadRadius: -13,
                              color: Colors.black54)
                        ],
                        borderRadius: BorderRadius.circular(16),
                        color: Colors.yellow),
                    child: Center(
                        child: Text(
                      "Daqiqa\nto'plamlari",
                      style: TextStyle(color: Colors.black),
                    )),
                  )
                ],
              ),
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
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(0, 17),
                              blurRadius: 15,
                              spreadRadius: -13,
                              color: Colors.black54)
                        ],
                        borderRadius: BorderRadius.circular(16),
                        color: Colors.yellow),
                    child: Center(
                        child: Text(
                      "USSD kodlari",
                      style: TextStyle(color: Colors.black),
                    )),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Container(
                    width: 150,
                    height: 100,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(0, 17),
                              blurRadius: 15,
                              spreadRadius: -13,
                              color: Colors.black54)
                        ],
                        borderRadius: BorderRadius.circular(16),
                        color: Colors.yellow),
                    child: Center(
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
