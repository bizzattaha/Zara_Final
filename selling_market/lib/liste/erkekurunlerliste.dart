import 'package:flutter/material.dart';
import 'package:selling_market/widget.dart';

class erkekurunlerliste extends StatelessWidget {
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
      body: ListView.builder(
        itemCount: eurunListesi.length,
        itemBuilder: (BuildContext context, int index) {
          return urunler(
            eurunListesi[index]["id"],
            eurunListesi[index]["img"],
            eurunListesi[index]["baslik"],
            eurunListesi[index]["fiyat"],context
          );
        },
      ),
    );
  }
}

final List<Map<String, String?>> eurunListesi = [
  {
    "id": "11", 
    "img": "assets/images/e1.jpeg",
    "baslik": "Elbise",
    "fiyat": "1.790.00 TL",
  },
  {
    "id": "21", 
    "img": "assets/images/e2.jpeg",
    "baslik": "Pantolon",
    "fiyat": "1.290.00 TL",
  },
  {
    "id": "31", 
    "img": "assets/images/e3.jpeg",
    "baslik": "Kısa Trençkot Ceket",
    "fiyat": "2.790.00 TL",
  },
  {
    "id": "41", 
    "img": "assets/images/e4.jpeg",
    "baslik": "Elbise",
    "fiyat": "1.790.00 TL",
  },
  {
    "id": "51", 
    "img": "assets/images/e5.jpeg",
    "baslik": "Çanta",
    "fiyat": "1.190.00 TL",
  },
  {
    "id": "61", 
    "img": "assets/images/e6.jpeg",
    "baslik": "Elbise",
    "fiyat": "1.790.00 TL",
  },
];
