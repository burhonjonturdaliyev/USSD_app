// ignore_for_file: prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:ussd_kodlari/navigatorbar/bar.dart';

void main() {
  // ignore: prefer_const_constructors
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "USSD kodlari",
    color: Colors.white,
    home: Bar(),
  ));
}
