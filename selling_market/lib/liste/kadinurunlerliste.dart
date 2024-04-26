import 'package:flutter/material.dart';
import 'package:selling_market/widget.dart';

class KadintumurunlerList extends StatelessWidget {
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
        itemCount: urunListesi.length,
        itemBuilder: (BuildContext context, int index) {
          return urunler(
            urunListesi[index]["id"],
            urunListesi[index]["img"],
            urunListesi[index]["baslik"],
            urunListesi[index]["fiyat"],context
          );
        },
      ),
    );
  }
}

final List<Map<String, String?>> urunListesi = [
  {
    "id": "1", 
    "img": "assets/images/U6.jpeg",
    "baslik": "MİNİ CITY ÇANTA",
    "fiyat": "1.190.00 TL",
  },
  {
    "id": "2", 
    "img": "assets/images/U1.jpeg",
    "baslik": "Elbise",
    "fiyat": "1.790.00 TL",
  },
  {
    "id": "3", 
    "img": "assets/images/U2.jpeg",
    "baslik": "Pantolon",
    "fiyat": "1.290.00 TL",
  },
  {
    "id": "4", 
    "img": "assets/images/U3.jpeg",
    "baslik": "Kısa Trençkot Ceket",
    "fiyat": "2.790.00 TL",
  },
  {
    "id": "5", 
    "img": "assets/images/U5.jpeg",
    "baslik": "Elbise",
    "fiyat": "1.790.00 TL",
  },
  {
    "id": "6", 
    "img": "assets/images/U6.jpeg",
    "baslik": "Çanta",
    "fiyat": "1.290.00 TL",
  },
  {
    "id": "7", 
    "img": "assets/images/U7.jpeg",
    "baslik": "Elbise",
    "fiyat": "1.790.00 TL",
  },
];
