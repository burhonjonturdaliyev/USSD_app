// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';

import '../uzmobile_models/unit_packages.dart';

class Units extends StatelessWidget {
  const Units({super.key});
  static List<Unit_packages> units = [
    Unit_packages(
        package_name: "700",
        monthly: "7 kunga 7000",
        limits: "700",
        contents:
            "1 Unit = 1mb, 1daqiqa, 1sms Yani berilgan Unitlarni extiyojga qarab istalgan shaklda sarflash mumkin. Misol berilgan 700 Unitlarni 700 mb uchun yoki 700 daqiqa so'zlashish uchun foydalanish mumkin yoki 350 mb va 350 daqiqa uchun.",
        reminder:
            "Units tariff rejalarida oylik internet paketlar xarid qilib bo'lmaydi va berilgan Unitlar tugagandan so'ng hisobidagi mablag' orqali so'zlashib bo'lmaydi tarif reajasi bo'yicha abonent to'lovi to'lab restart (*555#) xizmatini faollashtirish mumkin!",
        codes: "*777*1#"),
    Unit_packages(
        package_name: "150",
        monthly: "15 kunga 15000",
        limits: "1500",
        contents:
            "1 Unit = 1mb, 1daqiqa, 1sms Yani berilgan Unitlarni extiyojga qarab istalgan shaklda sarflash mumkin. Misol berilgan 1500 Unitlarni 1500 mb uchun yoki 1500 daqiqa so'zlashish uchun foydalanish mumkin yoki 750 mb va 750 daqiqa uchun.",
        reminder:
            "Units tariff rejalarida oylik internet paketlar xarid qilib bo'lmaydi va berilgan Unitlar tugagandan so'ng hisobdagi mablag' orqali so'zlashib bo'lmaydi tarif rejasi tarif rejasi bo'yicha abonent to'lovi to'lab restar (*555#) xizmatini faollashtirish mumkin!",
        codes: "*777*2#"),
    Unit_packages(
        package_name: "4000",
        monthly: "30 kunga 20000",
        limits: "4000",
        contents:
            "1 Unit = 1mb, 1daqiqa, 1sms Yani berilgan Unitlarni extiyojga qarab istalgan shaklda sarflash mumkin. Misol berilgan 4000 Unitlarni 4000 mb uchun yoki 2000 daqiqa so'zlashish uchun foydalanish mumkin yoki 2000 mb va 2000 daqiqa uchun.",
        reminder:
            "Units tariff rejalarida oylik internet paketlar xarid qilib bo'lmaydi va berilgan Unitlar tugagandan so'ng hisobdagi mablag' orqali so'zlashib bo'lmaydi tarif rejasi tarif rejasi bo'yicha abonent to'lovi to'lab restar (*555#) xizmatini faollashtirish mumkin!",
        codes: "*777*3#"),
    Unit_packages(
        package_name: "8000",
        monthly: "Oyiga 35000",
        limits: "8000",
        contents:
            "1 Unit = 1mb, 1daqiqa, 1sms Yani berilgan Unitlarni extiyojga qarab istalgan shaklda sarflash mumkin. Misol berilgan 8000 Unitlarni 8000 mb uchun yoki 8000 daqiqa so'zlashish uchun foydalanish mumkin yoki 4000 mb va 4000 daqiqa uchun.",
        reminder:
            "Units tariff rejalarida oylik internet paketlar xarid qilib bo'lmaydi va berilgan Unitlar tugagandan so'ng hisobdagi mablag' orqali so'zlashib bo'lmaydi tarif rejasi tarif rejasi bo'yicha abonent to'lovi to'lab restar (*555#) xizmatini faollashtirish mumkin!",
        codes: "777*4#"),
    Unit_packages(
        package_name: "11000",
        monthly: "Oyiga 45000",
        limits: "11000",
        contents:
            "1 Unit = 1mb, 1daqiqa, 1sms Yani berilgan Unitlarni extiyojga qarab istalgan shaklda sarflash mumkin. Misol berilgan 11000 Unitlarni 11000 mb uchun yoki 11000 daqiqa so'zlashish uchun foydalanish mumkin yoki 5500 mb va 5500 daqiqa uchun.",
        reminder:
            "1 Unit = 1mb, 1daqiqa, 1sms Yani berilgan Unitlarni extiyojga qarab istalgan shaklda sarflash mumkin. Misol berilgan 11000 Unitlarni 11000 mb uchun yoki 11000 daqiqa so'zlashish uchun foydalanish mumkin yoki 5500 mb va 5500 daqiqa uchun.",
        codes: "*777*5#"),
    Unit_packages(
        package_name: "14000",
        monthly: "Oyiga 55000",
        limits: "14000",
        contents:
            "1 Unit = 1mb, 1daqiqa, 1sms Yani berilgan Unitlarni extiyojga qarab istalgan shaklda sarflash mumkin. Misol berilgan 14000 Unitlarni 14000 mb uchun yoki 14000 daqiqa so'zlashish uchun foydalanish mumkin yoki 7000 mb va 7000 daqiqa uchun.",
        reminder:
            "1 Unit = 1mb, 1daqiqa, 1sms Yani berilgan Unitlarni extiyojga qarab istalgan shaklda sarflash mumkin. Misol berilgan 14000 Unitlarni 14000 mb uchun yoki 14000 daqiqa so'zlashish uchun foydalanish mumkin yoki 7000 mb va 7000 daqiqa uchun.",
        codes: "*777*6#"),
    Unit_packages(
        package_name: "18000",
        monthly: "Oyiga 65000",
        limits: "18000",
        contents:
            "1 Unit = 1mb, 1daqiqa, 1sms Yani berilgan Unitlarni extiyojga qarab istalgan shaklda sarflash mumkin. Misol berilgan 14000 Unitlarni 14000 mb uchun yoki 14000 daqiqa so'zlashish uchun foydalanish mumkin yoki 7000 mb va 7000 daqiqa uchun.",
        reminder:
            "1 Unit = 1mb, 1daqiqa, 1sms Yani berilgan Unitlarni extiyojga qarab istalgan shaklda sarflash mumkin. Misol berilgan 14000 Unitlarni 14000 mb uchun yoki 14000 daqiqa so'zlashish uchun foydalanish mumkin yoki 7000 mb va 7000 daqiqa uchun.",
        codes: "*777*7#"),
    Unit_packages(
        package_name: "22000",
        monthly: "Oyiga 75000",
        limits: "22000",
        contents:
            "1 Unit = 1mb, 1daqiqa, 1sms Yani berilgan Unitlarni extiyojga qarab istalgan shaklda sarflash mumkin. Misol berilgan 22000 Unitlarni 22000 mb uchun yoki 22000 daqiqa so'zlashish uchun foydalanish mumkin yoki 11000 mb va 11000 daqiqa uchun.",
        reminder:
            "1 Unit = 1mb, 1daqiqa, 1sms Yani berilgan Unitlarni extiyojga qarab istalgan shaklda sarflash mumkin. Misol berilgan 22000 Unitlarni 22000 mb uchun yoki 22000 daqiqa so'zlashish uchun foydalanish mumkin yoki 11000 mb va 11000 daqiqa uchun.",
        codes: "*777*8#")
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: units.length,
      itemBuilder: (BuildContext context, int index) {
        return Units_item(units[index]);
      },
    );
  }
}

// ignore: non_constant_identifier_names
Widget Units_item(Unit_packages unit_packages) {
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
                color: Colors.black,
                spreadRadius: -5,
                blurRadius: 10,
                offset: const Offset(0, 1))
          ],
          border: Border.all(width: 1, color: Colors.white30)),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "UNITS ${unit_packages.package_name}",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.blue),
                ),
              ],
            ),
          ),
          Divider(
            thickness: 1,
            color: Colors.blue,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                        child: Text(
                            "Abonent to'lovi: ${unit_packages.monthly} so'm")),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Expanded(
                        child: Text(
                            "Kiritilgan limit - ${unit_packages.limits} Units"))
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [Expanded(child: Text(unit_packages.contents))],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Expanded(child: Text("Eslatma: ${unit_packages.reminder}"))
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                    onPressed: () {
                      FlutterPhoneDirectCaller.callNumber(unit_packages.codes);
                    },
                    child: Text("Faollashtirish uchun"))
              ],
            ),
          )
        ],
      ),
    ),
  );
}
