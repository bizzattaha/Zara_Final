import 'package:flutter/material.dart';
import 'package:selling_market/widget.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Hesap extends StatefulWidget {
  const Hesap({Key? key}) : super(key: key);

  @override
  _HesapState createState() => _HesapState();
}

class _HesapState extends State<Hesap> {
  String content = "AYARLAR";
  bool notificationsEnabled = true;
  late bool geceModuAktif;
  late Locale _locale = Locale('tr');

  @override
  void initState() {
    super.initState();
    _getGeceModuDurumu();
    geceModuAktif = false;
    _getLocale(); // Dil bilgisini al
  }

  Future<void> _getGeceModuDurumu() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      geceModuAktif = prefs.getBool('geceModu') ?? false;
    });
  }

  Future<void> _toggleGeceModu() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      geceModuAktif = !geceModuAktif;
      prefs.setBool('geceModu', geceModuAktif);
    });
  }

  Future<void> _getLocale() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final savedLocale = prefs.getString('locale');
    setState(() {
      _locale = savedLocale != null ? Locale(savedLocale) : Locale('en');
    });
  }

  Future<void> _setLocale(String languageCode) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _locale = Locale(languageCode);
      prefs.setString('locale', languageCode);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: geceModuAktif ? Colors.black : Colors.white,
      body: Column(
        children: [
          Container(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 70, left: 10, right: 10, bottom: 20),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 5, right: 5),
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: geceModuAktif ? Colors.white : Colors.black,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              content = "AYARLAR";
                            });
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 8, horizontal: 16),
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Text(
                              "AYARLAR",
                              style: TextStyle(
                                fontSize: 15,
                                color: content == "AYARLAR"
                                    ? Colors.red
                                    : geceModuAktif
                                        ? Colors.white
                                        : Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5, right: 5),
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: geceModuAktif ? Colors.white : Colors.black,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              content = "PROFİL";
                            });
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 8, horizontal: 16),
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Text(
                              "PROFİL",
                              style: TextStyle(
                                fontSize: 15,
                                color: content == "PROFİL"
                                    ? Colors.red
                                    : geceModuAktif
                                        ? Colors.white
                                        : Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5, right: 5),
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: geceModuAktif ? Colors.white : Colors.black,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              content = "MAĞAZALAR";
                            });
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 8, horizontal: 16),
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Text(
                              "MAĞAZALAR",
                              style: TextStyle(
                                fontSize: 15,
                                color: content == "MAĞAZALAR"
                                    ? Colors.red
                                    : geceModuAktif
                                        ? Colors.white
                                        : Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5, right: 5),
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: geceModuAktif ? Colors.white : Colors.black,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              content = "YARDIM";
                            });
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 8, horizontal: 16),
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Text(
                              "YARDIM",
                              style: TextStyle(
                                fontSize: 15,
                                color: content == "YARDIM"
                                    ? Colors.red
                                    : geceModuAktif
                                        ? Colors.white
                                        : Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Divider(),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    if (content == "AYARLAR") ...[
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Bildirimler",
                                  style: TextStyle(
                                    color: geceModuAktif
                                        ? Colors.white
                                        : Colors.black,
                                  ),
                                ),
                                Switch(
                                  value: notificationsEnabled,
                                  onChanged: (value) {
                                    setState(() {
                                      notificationsEnabled = value;
                                    });
                                    // Bildirimlerin durumuna göre uygun uyarıyı göster
                                    if (notificationsEnabled) {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        SnackBar(
                                          content: Text("Bildirimler açık"),
                                          duration: Duration(seconds: 2),
                                        ),
                                      );
                                    } else {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        SnackBar(
                                          content: Text("Bildirimler kapalı"),
                                          duration: Duration(seconds: 2),
                                        ),
                                      );
                                    }
                                  },
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Gece Modu",
                                  style: TextStyle(
                                    color: geceModuAktif
                                        ? Colors.white
                                        : Colors.black,
                                  ),
                                ),
                                Switch(
                                  value: geceModuAktif,
                                  onChanged: (value) {
                                    _toggleGeceModu();
                                  },
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Türkçe / İngilizce ",
                                  style: TextStyle(
                                    color: geceModuAktif
                                        ? Colors.white
                                        : Colors.black,
                                  ),
                                ),
                                Switch(
                                  value: _locale.languageCode ==
                                      'tr', // Türkçe seçiliyse true
                                  onChanged: (newValue) {
                                    if (newValue) {
                                      _setLocale('tr'); // Türkçe'yi seç
                                    } else {
                                      _setLocale('en'); // İngilizce'yi seç
                                    }
                                    setState(() {});
                                  },
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ] else if (content == "PROFİL") ...[
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Ad Soyad",
                                    style: TextStyle(
                                      color: geceModuAktif
                                          ? Colors.white
                                          : Colors.black,
                                    ),
                                  ),
                                  Text(
                                    "Bilal Karabulut (221216055)",
                                    style: TextStyle(
                                      color: geceModuAktif
                                          ? Colors.white
                                          : Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 25,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Numara",
                                    style: TextStyle(
                                      color: geceModuAktif
                                          ? Colors.white
                                          : Colors.black,
                                    ),
                                  ),
                                  Text(
                                    "055116418",
                                    style: TextStyle(
                                      color: geceModuAktif
                                          ? Colors.white
                                          : Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 25,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "E-Posta",
                                    style: TextStyle(
                                      color: geceModuAktif
                                          ? Colors.white
                                          : Colors.black,
                                    ),
                                  ),
                                  Text(
                                    "bilaltahakarabulut@gmail.com",
                                    style: TextStyle(
                                      color: geceModuAktif
                                          ? Colors.white
                                          : Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 25,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Adres",
                                    style: TextStyle(
                                      color: geceModuAktif
                                          ? Colors.white
                                          : Colors.black,
                                    ),
                                  ),
                                  Text(
                                    "İstanbul / Pendik",
                                    style: TextStyle(
                                      color: geceModuAktif
                                          ? Colors.white
                                          : Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 25,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Parola",
                                    style: TextStyle(
                                      color: geceModuAktif
                                          ? Colors.white
                                          : Colors.black,
                                    ),
                                  ),
                                  Text(
                                    "**********",
                                    style: TextStyle(
                                      color: geceModuAktif
                                          ? Colors.white
                                          : Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 25,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Çıkış yap",
                                    style: TextStyle(
                                      color: geceModuAktif
                                          ? Colors.white
                                          : Colors.black,
                                    ),
                                  ),
                                  Text(
                                    "Hesabınızı silin",
                                    style: TextStyle(
                                      color: geceModuAktif
                                          ? Colors.white
                                          : Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      )
                    ] else if (content == "MAĞAZALAR") ...[
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "İstanbul / Kartal",
                                    style: TextStyle(
                                      color: geceModuAktif
                                          ? Colors.white
                                          : Colors.black,
                                    ),
                                  ),
                                  Text(
                                    "İst Marina",
                                    style: TextStyle(
                                      color: geceModuAktif
                                          ? Colors.white
                                          : Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 25,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "İstanbul / Maltepe",
                                    style: TextStyle(
                                      color: geceModuAktif
                                          ? Colors.white
                                          : Colors.black,
                                    ),
                                  ),
                                  Text("Hiltown AVM"),
                                ],
                              ),
                              SizedBox(
                                height: 25,
                              ),
                            ],
                          )
                        ],
                      )
                    ] else if (content == "YARDIM") ...[
                      Row(
                        children: [
                          Text("YARDIM sayfası"),
                        ],
                      )
                    ]
                  ],
                ),
              ),
            ),
          ),
          Container(
            color: Colors.black,
            child: Padding(
              padding:
                  EdgeInsets.only(bottom: 30, left: 15, right: 15, top: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  buildBottomButton("ANA SAYFA", "/anasayfa", context),
                  buildBottomButton("MENÜ", "/menu", context),
                  buildBottomButton("HESAP", "/hesap", context),
                  buildBottomButton("SEPET ", "/sepet", context),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}