import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';

class Xizmatlar extends StatelessWidget {
  const Xizmatlar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      minimum: const EdgeInsets.fromLTRB(0, 10, 0, 0),
      child: ListView(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(width: 1, color: Colors.white24),
                          borderRadius: BorderRadius.circular(16),
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.black,
                                spreadRadius: -5,
                                blurRadius: 10,
                                offset: Offset(0, 1)),
                          ]),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                const Text(
                                  "*111*2*7*2#",
                                  style: TextStyle(
                                      color: Colors.blue,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                          const Divider(
                            thickness: 1,
                            color: Colors.blue,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [const Text("4G LTE o'chirish")],
                            ),
                          ),
                          // ignore: prefer_const_constructors
                          SizedBox(
                            height: 5,
                          ),
                          ElevatedButton(
                              onPressed: () {
                                FlutterPhoneDirectCaller.callNumber(
                                    "*111*2*7*2#");
                              },
                              child: const Text("Faollashtirish uchun"))
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(width: 1, color: Colors.white24),
                          borderRadius: BorderRadius.circular(16),
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.black,
                                spreadRadius: -5,
                                blurRadius: 10,
                                offset: Offset(0, 1)),
                          ]),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                const Text(
                                  "*43#",
                                  style: TextStyle(
                                      color: Colors.blue,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                          const Divider(
                            thickness: 1,
                            color: Colors.blue,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                const Text("Kutib turishni faollashtirish")
                              ],
                            ),
                          ),
                          // ignore: prefer_const_constructors
                          SizedBox(
                            height: 5,
                          ),
                          ElevatedButton(
                              onPressed: () {
                                FlutterPhoneDirectCaller.callNumber("*43#");
                              },
                              child: const Text("Faollashtirish uchun"))
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(width: 1, color: Colors.white24),
                          borderRadius: BorderRadius.circular(16),
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.black,
                                spreadRadius: -5,
                                blurRadius: 10,
                                offset: Offset(0, 1)),
                          ]),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                const Text(
                                  "*67#",
                                  style: TextStyle(
                                      color: Colors.blue,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                          const Divider(
                            thickness: 1,
                            color: Colors.blue,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                const Text("Pereadresatsiyani tekshirish")
                              ],
                            ),
                          ),
                          // ignore: prefer_const_constructors
                          SizedBox(
                            height: 5,
                          ),
                          ElevatedButton(
                              onPressed: () {
                                FlutterPhoneDirectCaller.callNumber("*67#");
                              },
                              child: const Text("Faollashtirish uchun"))
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(width: 1, color: Colors.white24),
                          borderRadius: BorderRadius.circular(16),
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.black,
                                spreadRadius: -5,
                                blurRadius: 10,
                                offset: Offset(0, 1)),
                          ]),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                const Text(
                                  "*#06#",
                                  style: TextStyle(
                                      color: Colors.blue,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                          const Divider(
                            thickness: 1,
                            color: Colors.blue,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                const Text("Telefonni IMEI-kodini bilib oling")
                              ],
                            ),
                          ),
                          // ignore: prefer_const_constructors
                          SizedBox(
                            height: 5,
                          ),
                          ElevatedButton(
                              onPressed: () {
                                FlutterPhoneDirectCaller.callNumber("*#06#");
                              },
                              child: const Text("Faollashtirish uchun"))
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(width: 1, color: Colors.white24),
                          borderRadius: BorderRadius.circular(16),
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.black,
                                spreadRadius: -5,
                                blurRadius: 10,
                                offset: Offset(0, 1)),
                          ]),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                const Text(
                                  "LTE (4G)",
                                  style: TextStyle(
                                      color: Colors.blue,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                          const Divider(
                            thickness: 1,
                            color: Colors.blue,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                const Expanded(
                                    child: Text(
                                        "Uzmobile Interneti ortiqcha harajatsiz 4G LTE tezligida!\nO'ta yuqori tezlik yordamida xohlagan joyingizda bilimingizni oshiring, hissiyotlaringiz bilan bo'lishing, faolroq suhbatlashing!\n70 Mbit/sgacha tezlik nafaqat kata hajmdagi feyllarni ko'chirib olishga, balki HD-sifatidagi seriallarni hech qanday uzilishlarsiz onlayn ko'rishga imkoniyat yaratadi."))
                              ],
                            ),
                          ),
                          // ignore: prefer_const_constructors
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              ElevatedButton(
                                  onPressed: () {
                                    FlutterPhoneDirectCaller.callNumber(
                                        "*111*2*7*1#");
                                  },
                                  child: const Text("Faollashtirish uchun")),
                              ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.red),
                                  onPressed: () {
                                    FlutterPhoneDirectCaller.callNumber(
                                        "*111*2*7*2#");
                                  },
                                  child: const Text("O'chirish uchun")),
                            ],
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(width: 1, color: Colors.white24),
                          borderRadius: BorderRadius.circular(16),
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.black,
                                spreadRadius: -5,
                                blurRadius: 10,
                                offset: Offset(0, 1)),
                          ]),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                const Text(
                                  "Restart",
                                  style: TextStyle(
                                      color: Colors.blue,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                          const Divider(
                            thickness: 1,
                            color: Colors.blue,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                const Expanded(
                                  child: Text(
                                      "<<Restart> xizmatini muvaffaqiyatli faollashtirganda Street, Flash va Royal tariflar tizimlaridagi abonentlar oylik"),
                                )
                              ],
                            ),
                          ),
                          // ignore: prefer_const_constructors
                          SizedBox(
                            height: 5,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(width: 1, color: Colors.white24),
                          borderRadius: BorderRadius.circular(16),
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.black,
                                spreadRadius: -5,
                                blurRadius: 10,
                                offset: Offset(0, 1)),
                          ]),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                const Text(
                                  "Barcha qo'ng'iroqlari yo'naltirish",
                                  style: TextStyle(
                                      color: Colors.blue,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                          const Divider(
                            thickness: 1,
                            color: Colors.blue,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                const Expanded(
                                    child: Text(
                                        "Faollashtirish: **21*telefon raqami#\nBekor qilish: ##21#\nO'CHIRISH\nMisol uchun: kiruvchibarcha qo'ng'iroqlarni\n+998991234567\nraqamiga yo'naltirish uchun, quyidagi buyruq kiritiladi:\n**21*+9998991234567#"))
                              ],
                            ),
                          ),
                          // ignore: prefer_const_constructors
                          SizedBox(
                            height: 5,
                          ),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.red),
                              onPressed: () {
                                FlutterPhoneDirectCaller.callNumber("##21#");
                              },
                              child: const Text("O'chirish uchun"))
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(width: 1, color: Colors.white24),
                          borderRadius: BorderRadius.circular(16),
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.black,
                                spreadRadius: -5,
                                blurRadius: 10,
                                offset: Offset(0, 1)),
                          ]),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                const Expanded(
                                  child: Center(
                                    child: Text(
                                      "Band bo'lgandagi qo'ng'iroqlarni yo'naltirish",
                                      style: TextStyle(
                                          color: Colors.blue,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Divider(
                            thickness: 1,
                            color: Colors.blue,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                const Text(
                                    "Faollashtirish: **67*telefon raqami#\nBekor qilish: ##67#\nMisol uchun: telefon band bo'lganda qo'ng'iroqlarni\n+998991234567 raqamiga yo'naltirish uchun, quyidagi\nbuyruq kiritiladi: **67*+9998991234567#")
                              ],
                            ),
                          ),
                          // ignore: prefer_const_constructors
                          SizedBox(
                            height: 5,
                          ),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.red),
                              onPressed: () {
                                FlutterPhoneDirectCaller.callNumber("##67#");
                              },
                              child: const Text("O'chirish uchun"))
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(width: 1, color: Colors.white24),
                          borderRadius: BorderRadius.circular(16),
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.black,
                                spreadRadius: -5,
                                blurRadius: 10,
                                offset: Offset(0, 1)),
                          ]),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                const Expanded(
                                  child: Center(
                                    child: Text(
                                      "Javozsiz qo'ng'iroqlarni yo'naltirish",
                                      style: TextStyle(
                                          color: Colors.blue,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Divider(
                            thickness: 1,
                            color: Colors.blue,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Row(
                                  // ignore: prefer_const_literals_to_create_immutables
                                  children: [
                                    const Expanded(
                                      child: Text(
                                          "Faollashtirish: **61*telefon raqami#"),
                                    )
                                  ],
                                ),
                                Row(
                                  // ignore: prefer_const_literals_to_create_immutables
                                  children: [
                                    const Expanded(
                                      child: Text(
                                          "Bu yerda X = vaqt, sekund (5 sekunddan 25 sekundgacha)"),
                                    )
                                  ],
                                ),
                                Row(
                                  // ignore: prefer_const_literals_to_create_immutables
                                  children: [
                                    const Expanded(
                                        child: Text("Bekor qilish: ##61##"))
                                  ],
                                ),
                                Row(
                                  // ignore: prefer_const_literals_to_create_immutables
                                  children: [
                                    const Expanded(child: Text("O'chirish"))
                                  ],
                                ),
                                Row(
                                  // ignore: prefer_const_literals_to_create_immutables
                                  children: [
                                    const Expanded(
                                        child: Text(
                                            "Misol uchun: qo'ng'iroqqa 10 sekund ichida javob bo'lmaganda, qo'ng'iroqlarni +998991234567 raqamiga yo'naltirish uchun, quyidagi buyruq kiritiladi: **67*+9998991234567**10#"))
                                  ],
                                )
                              ],
                            ),
                          ),
                          // ignore: prefer_const_constructors
                          SizedBox(
                            height: 5,
                          ),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.red),
                              onPressed: () {
                                FlutterPhoneDirectCaller.callNumber("##61#");
                              },
                              child: const Text("O'chirish uchun"))
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(width: 1, color: Colors.white24),
                          borderRadius: BorderRadius.circular(16),
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.black,
                                spreadRadius: -5,
                                blurRadius: 10,
                                offset: Offset(0, 1)),
                          ]),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                const Expanded(
                                  child: Center(
                                    child: Text(
                                      "Kiruvchi qo'ng'iroq va sms larni taqiqlash",
                                      style: TextStyle(
                                          color: Colors.blue,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Divider(
                            thickness: 1,
                            color: Colors.blue,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                const Expanded(
                                  child: Text(
                                      "Kiruvchi qo'ng'iroq va sms larni taqiqlash xizmati abonentga barcha kiruvchu qo'ng'iroq va sms larni taqiqlash imkonini beradi"),
                                )
                              ],
                            ),
                          ),
                          // ignore: prefer_const_constructors
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              ElevatedButton(
                                  onPressed: () {
                                    FlutterPhoneDirectCaller.callNumber(
                                        "*35*0000#");
                                  },
                                  child: const Text("Faollashtirish uchun")),
                              ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.red),
                                  onPressed: () {
                                    FlutterPhoneDirectCaller.callNumber(
                                        "#35*0000#");
                                  },
                                  child: const Text("O'chirish uchun")),
                            ],
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(width: 1, color: Colors.white24),
                          borderRadius: BorderRadius.circular(16),
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.black,
                                spreadRadius: -5,
                                blurRadius: 10,
                                offset: Offset(0, 1)),
                          ]),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                const Expanded(
                                  child: Center(
                                    child: Text(
                                      "Chiquvchi qo'ng'iroqlarni taqiqlash",
                                      style: TextStyle(
                                          color: Colors.blue,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Divider(
                            thickness: 1,
                            color: Colors.blue,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                const Expanded(
                                    child: Text(
                                        "Chiquvchi qo'ng'iroqlarni taqiqlash xizmatini abonentga barcha chiquvchi qo'ng'iroqlarni taqiqlash imkonini beradi"))
                              ],
                            ),
                          ),
                          // ignore: prefer_const_constructors
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              ElevatedButton(
                                  onPressed: () {
                                    FlutterPhoneDirectCaller.callNumber(
                                        "*33*0000#");
                                  },
                                  child: const Text("Faollashtirish uchun")),
                              ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.red),
                                  onPressed: () {
                                    FlutterPhoneDirectCaller.callNumber(
                                        "#33*0000#");
                                  },
                                  child: const Text("O'chirish uchun")),
                            ],
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(width: 1, color: Colors.white24),
                          borderRadius: BorderRadius.circular(16),
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.black,
                                spreadRadius: -5,
                                blurRadius: 10,
                                offset: Offset(0, 1)),
                          ]),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                const Text(
                                  "Abonent xizmatlari bo'limi",
                                  style: TextStyle(
                                      color: Colors.blue,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                          const Divider(
                            thickness: 1,
                            color: Colors.blue,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                const Expanded(
                                  child: Text(
                                      "XIZMATLAR TURI\nShartnomani qayta rasmiylashtirish 8400 so'm.\nTelefon raqamini almashtirish 8400 so'm.\nQo'ng'iroqlar tafsiloti (oxirgi 3 oylik) 8400 so'm.\nAbonent tomonidan o'z raqamini 2 oy muddatga vaqtinchalik uzib qo'yish bepul.\nVaqtinchalik uzib qo'yishda raqamni saqlab qo'yish uchun to'lov (2 oydan ortiq muddatga) 4200 so'm/oyiga.\nRaqamni saqlash uchun to'lov (prepaid abonentlarga) 126 so'm/kuniga.\nSIM-kartalarini almashtirish 8400 so'm.\nShartnomani tiklash 12 500 so'm\n* Pulli toifadagi raqamni qayta rasmiylashtirilganda yangi abonent pulli toifadagi raqamning 100% narxini to'laydi"),
                                )
                              ],
                            ),
                          ),
                          // ignore: prefer_const_constructors
                          SizedBox(
                            height: 5,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
