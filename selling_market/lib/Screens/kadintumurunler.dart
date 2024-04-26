import 'package:flutter/material.dart';
import 'package:selling_market/liste/kadinurunlerliste.dart';
import 'package:selling_market/widget.dart';

class kadintumurunler extends StatelessWidget {
  kadintumurunler({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(children: [
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                for (int i = 0; i < urunListesi.length; i += 2)
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: urunler(
                              urunListesi[i]["id"],
                              urunListesi[i]["img"],
                              urunListesi[i]["baslik"],
                              urunListesi[i]["fiyat"],
                              context),
                        ),
                        SizedBox(
                            width: 8), // İki ürün arasında boşluk bırakmak için
                        if (i + 1 < urunListesi.length)
                          Expanded(
                            child: urunler(
                                urunListesi[i + 1]["id"],
                                urunListesi[i + 1]["img"],
                                urunListesi[i + 1]["baslik"],
                                urunListesi[i + 1]["fiyat"],
                                context),
                          ),
                      ],
                    ),
                  ),
              ],
            ),
          ),
        ),
        Container(
          color: Colors.black,
          child: Padding(
            padding: EdgeInsets.only(bottom: 30, left: 15, right: 15, top: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.popAndPushNamed(context, "/anasayfa");
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                      "ANA SAYFA",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.popAndPushNamed(context, "/menu");
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                      "MENÜ",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.popAndPushNamed(context, "/hesap");
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                      "HESAP",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.popAndPushNamed(context, "/sepet");
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                      "SEPET (0)",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
