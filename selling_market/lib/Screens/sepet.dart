import 'package:flutter/material.dart';
import 'package:selling_market/liste/kadinurunlerliste.dart';
import 'package:selling_market/widget.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Sepet extends StatefulWidget {
  @override
  _SepetState createState() => _SepetState();
}

class _SepetState extends State<Sepet> {
  bool sepetBos = true; // Sepetin başlangıçta boş olduğunu varsayalım
  String content = "Sepetim";
    late bool geceModuAktif;

  void initState() {
    super.initState();
    _getGeceModuDurumu();
    geceModuAktif = false; // Başlangıçta varsayılan değeri atama
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: geceModuAktif ? Colors.black : Colors.white,
      body: Column(
        children: [
          Container(
            child: Padding(
              padding: EdgeInsets.only(
                top: 80,
              ),
              child: Column(
                children: [
                  Divider(
                    color: geceModuAktif
                                          ? Colors.white
                                          : Colors.black,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              content = "Sepetim";
                            });
                          },
                          child: Row(
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(
                                    vertical: 8, horizontal: 16),
                                decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Text(
                                  "Sepetim",
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: content == "Sepetim"
                                        ? Colors.red
                                        : geceModuAktif
                                          ? Colors.white
                                          : Colors.black,
                                  ),
                                ),
                              ),
                              Icon(
                                Icons.shopping_bag,
                                color: geceModuAktif
                                          ? Colors.white
                                          : Colors.black,
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 90,
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              content = "Favoriler";
                            });
                          },
                          child: Row(
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(
                                    vertical: 8, horizontal: 16),
                                decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Text(
                                  "Favoriler",
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: content == "Favoriler"
                                        ? Colors.red
                                        : geceModuAktif
                                          ? Colors.white
                                          : Colors.black,
                                  ),
                                ),
                              ),
                              Icon(
                                Icons.bookmark,
                                color: geceModuAktif
                                          ? Colors.white
                                          : Colors.black,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(color: geceModuAktif
                                          ? Colors.white
                                          : Colors.black,),
                ],
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  if (content == "Sepetim") ...[
                    if (Sepet2.sepetListesi.isEmpty)
                      Center(
                        child: Text(
                          'Sepette ürün bulunmamaktadır.',
                          style: TextStyle(fontSize: 16, color: geceModuAktif
                                          ? Colors.white
                                          : Colors.black,),
                        ),
                      )
                    else
                      for (int i = 0; i < Sepet2.sepetListesi.length; i += 2)
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: Row(
                            children: [
                              Expanded(
                                child: Column(
                                  children: [
                                    urunler(
                                        Sepet2.sepetListesi[i],
                                        urunListesi.firstWhere((element) =>
                                            element["id"] ==
                                            Sepet2.sepetListesi[i])["img"],
                                        urunListesi.firstWhere((element) =>
                                            element["id"] ==
                                            Sepet2.sepetListesi[i])["baslik"],
                                        urunListesi.firstWhere((element) =>
                                            element["id"] ==
                                            Sepet2.sepetListesi[i])["fiyat"],
                                        context),
                                  ],
                                ),
                              ),
                              SizedBox(
                                  width:
                                      8), // İki ürün arasında boşluk bırakmak için
                              if (i + 1 < Sepet2.sepetListesi.length)
                                Expanded(
                                  child: urunlerGoster(i, context)
                                ),
                            ],
                          ),
                        ),
                  ] else if (content == "Favoriler") ...[
                    if (favori.favoriListesi.isEmpty)
                      Center(
                        child: Text(
                          'Favori ürün bulunmamaktadır.',
                          style: TextStyle(fontSize: 16,color: geceModuAktif
                                          ? Colors.white
                                          : Colors.black,),
                        ),
                      )
                    else
                      for (int i = 0; i < favori.favoriListesi.length; i += 2)
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: Row(
                            children: [
                              Expanded(
                                child: urunler(
                                    favori.favoriListesi[i],
                                    urunListesi.firstWhere((element) =>
                                        element["id"] ==
                                        favori.favoriListesi[i])["img"],
                                    urunListesi.firstWhere((element) =>
                                        element["id"] ==
                                        favori.favoriListesi[i])["baslik"],
                                    urunListesi.firstWhere((element) =>
                                        element["id"] ==
                                        favori.favoriListesi[i])["fiyat"],
                                    context),
                              ),
                              SizedBox(
                                  width:
                                      8), // İki ürün arasında boşluk bırakmak için
                              if (i + 1 < favori.favoriListesi.length)
                                Expanded(
                                  child: eurunlerGoster(i, context)
                                ),
                            ],
                          ),
                        ),
                  ],
                ],
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
                  buildBottomButton("ANA SAYFA", "/anasayfa",context),
                  buildBottomButton("MENÜ", "/menu",context),
                  buildBottomButton("HESAP", "/hesap",context),
                  buildBottomButton("SEPET ", "/sepet",context),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Sepet2 {
  static List<String> sepetListesi = [];

  static void urunEkle(String id) {
    sepetListesi.add(id);
  }

  static bool urunVarMi() {
    return sepetListesi.isNotEmpty;
  }

  static void sepetiTemizle() {
    sepetListesi.clear();
  }
}

class favori {
  static List<String> favoriListesi = [];

  static void urunEkle(String id) {
    favoriListesi.add(id);
  }

  static bool urunVarMi() {
    return favoriListesi.isNotEmpty;
  }

  static void sepetiTemizle() {
    favoriListesi.clear();
  }
}
