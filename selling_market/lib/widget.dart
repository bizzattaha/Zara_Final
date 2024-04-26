import 'package:flutter/material.dart';
import 'package:selling_market/Screens/sepet.dart';
import 'package:selling_market/liste/erkekurunlerliste.dart';
import 'package:selling_market/liste/kadinurunlerliste.dart';

Widget urunler(String? id, String? img, String? baslik, String? fiyat,
    BuildContext context) {
  return Stack(
    children: [
      Padding(
        padding: const EdgeInsets.only(left: 3, right: 2, top: 5, bottom: 5),
        child: Container(
          width: 210,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                img!,
                fit: BoxFit.cover,
              ),
              Text(
                baslik!,
                style: TextStyle(color: Colors.white, fontSize: 12),
              ),
              Text(
                fiyat!,
                style: TextStyle(color: Colors.white, fontSize: 12),
              ),
            ],
          ),
        ),
      ),
      Positioned(
        top: 0,
        right: 0,
        child: IconButton(
          icon: Icon(Icons.shopping_cart),
          color: Colors.black,
          onPressed: () {
            Sepet2.urunEkle(id!);
            // Sepete eklendiğinde Snackbar göster
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('Ürün sepete eklendi'),
                duration: Duration(seconds: 2),
              ),
            );
          },
        ),
      ),
      Positioned(
        top: 0,
        left: 0,
        child: IconButton(
          icon: Icon(Icons.favorite),
          color: Colors.black,
          onPressed: () {
            favori.urunEkle(id!);
            // Sepete eklendiğinde Snackbar göster
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('Ürün favorilere eklendi'),
                duration: Duration(seconds: 2),
              ),
            );
          },
        ),
      ),
    ],
  );
}

GestureDetector menu_buton(BuildContext context, Widget sayfa, String isim) {
  return GestureDetector(
    onTap: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => sayfa));
    },
    child: Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          isim,
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18),
        ),
      ),
    ),
  );
}

Stack urun(String img, String baslik, String fiyat) {
  return Stack(
    children: [
      Padding(
        padding: const EdgeInsets.only(left: 3, right: 2, top: 5, bottom: 5),
        child: Container(
          width: 210,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                img,
                fit: BoxFit.cover,
              ),
              Text(
                baslik,
                style: TextStyle(color: Colors.white, fontSize: 12),
              ),
              Text(
                fiyat,
                style: TextStyle(color: Colors.white, fontSize: 12),
              ),
            ],
          ),
        ),
      ),
      Positioned(
        top: 0,
        right: 0,
        child: IconButton(
          icon: Icon(Icons.shopping_cart),
          color: Colors.black,
          onPressed: () {
            // Sepete ekleme işlemi burada yapılır
          },
        ),
      ),
    ],
  );
}

Widget urunlerGoster(int index, BuildContext context) {
  var urunId = Sepet2.sepetListesi[index + 1];
  var urun;

  // "urunlerliste" ve "eurunlerliste" listelerini kontrol ederek ürün bilgilerini al
  if (urunListesi.any((element) => element["id"] == urunId)) {
    urun = urunListesi.firstWhere((element) => element["id"] == urunId);
  } else if (eurunListesi.any((element) => element["id"] == urunId)) {
    urun = eurunListesi.firstWhere((element) => element["id"] == urunId);
  } else {}

  return urunler(
    urunId,
    urun["img"],
    urun["baslik"],
    urun["fiyat"],
    context,
  );
}

Widget eurunlerGoster(int index, BuildContext context) {
  var urunId = favori.favoriListesi[index + 1];
  var urun;

  // "urunlerliste" ve "eurunlerliste" listelerini kontrol ederek ürün bilgilerini al
  if (urunListesi.any((element) => element["id"] == urunId)) {
    urun = urunListesi.firstWhere((element) => element["id"] == urunId);
  } else if (eurunListesi.any((element) => element["id"] == urunId)) {
    urun = eurunListesi.firstWhere((element) => element["id"] == urunId);
  } else {}

  return urunler(
    urunId,
    urun["img"],
    urun["baslik"],
    urun["fiyat"],
    context,
  );
}

Widget buildMenuButton(String title, VoidCallback onPressed) {
  return GestureDetector(
    onTap: onPressed,
    child: Container(
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.white, width: 2),
      ),
      child: Text(
        title,
        style: TextStyle(
            color: Colors.white, fontSize: 13, fontWeight: FontWeight.bold),
      ),
    ),
  );
}

Widget buildBottomButton(String title, String route, BuildContext context) {
  return GestureDetector(
    onTap: () {
      Navigator.popAndPushNamed(context, route);
    },
    child: Container(
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        title,
        style: TextStyle(color: Colors.white),
      ),
    ),
  );
}

