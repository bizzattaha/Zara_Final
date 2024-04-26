import 'package:flutter/material.dart';
import 'package:selling_market/Screens/erkektumurunler.dart';
import 'package:selling_market/liste/erkekurunlerliste.dart';
import 'package:selling_market/Screens/kadintumurunler.dart';
import 'package:selling_market/widget.dart';

class Menu extends StatefulWidget {
  Menu({Key? key}) : super(key: key);

  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  String selectedCategory =
      "Kadın"; // Varsayılan olarak "Kadın" kategorisini seçtik

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 60, left: 10, right: 10),
                  child: Row(
                    children: [
                      Image.asset(
                        "/Users/bizzattaha/Desktop/zara.png",
                        height: 170,
                      )
                    ],
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: EdgeInsets.only(left: 12, top: 8),
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedCategory = "Kadın";
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
                              "Kadın",
                              style: TextStyle(
                                fontSize: 23,
                                color: selectedCategory == "Kadın"
                                    ? Colors
                                        .red // Seçilen kategori "Kadın" ise kırmızı renk
                                    : Colors.black,
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedCategory = "Erkek";
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
                              "Erkek",
                              style: TextStyle(
                                fontSize: 23,
                                color: selectedCategory == "Erkek"
                                    ? Colors
                                        .red // Seçilen kategori "Erkek" ise kırmızı renk
                                    : Colors.black,
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedCategory = "Çocuk";
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
                              "Çocuk",
                              style: TextStyle(
                                fontSize: 23,
                                color: selectedCategory == "Çocuk"
                                    ? Colors
                                        .red // Seçilen kategori "Çocuk" ise kırmızı renk
                                    : Colors.black,
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedCategory = "Home";
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
                              "Home",
                              style: TextStyle(
                                fontSize: 23,
                                color: selectedCategory == "Home"
                                    ? Colors
                                        .red // Seçilen kategori "Home" ise kırmızı renk
                                    : Colors.black,
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedCategory = "Parfüm";
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
                              "Parfüm",
                              style: TextStyle(
                                fontSize: 23,
                                color: selectedCategory == "Parfüm"
                                    ? Colors
                                        .red // Seçilen kategori "Parfüm" ise kırmızı renk
                                    : Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Divider(),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(top: 8, left: 12),
              child: SingleChildScrollView(
                child: Row(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              if (selectedCategory == "Kadın") ...[
                                menu_buton(
                                    context, kadintumurunler(), " /// NEW"),
                                menu_buton(
                                    context, kadintumurunler(), "TÜM ÜRÜNLER"),
                                menu_buton(context, kadintumurunler(), "KETEN"),
                                menu_buton(
                                    context, kadintumurunler(), "BLAZER"),
                                menu_buton(
                                    context, kadintumurunler(), "ELBİSE"),
                                menu_buton(context, kadintumurunler(), "ETEK"),
                                menu_buton(context, kadintumurunler(),
                                    "ŞORT / BERMUDA"),
                                menu_buton(
                                    context, kadintumurunler(), "TOP / BODY"),
                                menu_buton(context, kadintumurunler(),
                                    "GÖMLEK / BLUZ"),
                                menu_buton(
                                    context, kadintumurunler(), "T-SHIRT"),
                                menu_buton(context, kadintumurunler(), "JEAN"),
                                menu_buton(
                                    context, kadintumurunler(), "PANTOLON"),
                                menu_buton(context, kadintumurunler(),
                                    "HIRKA / KAZAK"),
                                menu_buton(
                                    context, kadintumurunler(), "AYAKKABI"),
                              ] else if (selectedCategory == "Erkek") ...[
                                menu_buton(
                                    context, erkekurunlerliste(), " /// NEW"),
                                menu_buton(
                                    context, erkektumurunler(), "TÜM ÜRÜNLER"),
                                menu_buton(context, erkektumurunler(), "KETEN"),
                                menu_buton(context, erkektumurunler(), "KROŞE"),
                                menu_buton(
                                    context, erkektumurunler(), "GÖMLEK"),
                                menu_buton(
                                    context, erkektumurunler(), "T-SHIRT"),
                                menu_buton(
                                    context, erkektumurunler(), "POLO T-SHIRT"),
                                menu_buton(
                                    context, erkektumurunler(), "PANTOLON "),
                                menu_buton(context, erkektumurunler(), "JEAN"),
                                menu_buton(context, erkektumurunler(),
                                    "ŞORT / BERMUDA"),
                                menu_buton(
                                    context, erkektumurunler(), "TAKIM ELBİSE"),
                                menu_buton(
                                    context, erkektumurunler(), "PLAJ GİYİMİ"),
                                menu_buton(
                                    context, erkektumurunler(), "MONT / YELEK"),
                                menu_buton(
                                    context, erkektumurunler(), "SWEATSHIRT"),
                                menu_buton(context, erkektumurunler(), "TRIKO"),
                              ] else if (selectedCategory == "Çocuk") ...[
                                menu_buton(
                                    context, kadintumurunler(), " /// NEW"),
                                menu_buton(
                                    context, kadintumurunler(), "TÜM ÜRÜNLER"),
                                menu_buton(
                                    context, kadintumurunler(), "KIZ ÇOCUK"),
                                menu_buton(context, kadintumurunler(), "6 YAŞ"),
                                menu_buton(
                                    context, kadintumurunler(), "12 YAŞ"),
                                menu_buton(
                                    context, kadintumurunler(), "ERKEK ÇOCUK"),
                                menu_buton(context, kadintumurunler(), "6 YAŞ"),
                                menu_buton(
                                    context, kadintumurunler(), "HOME KIDS"),
                                menu_buton(
                                    context, kadintumurunler(), "AKSESUAR"),
                                menu_buton(
                                    context, kadintumurunler(), "AYAKKABI"),
                              ] else if (selectedCategory == "Home") ...[
                                menu_buton(
                                    context, kadintumurunler(), " /// NEW"),
                                menu_buton(
                                    context, kadintumurunler(), "TÜM ÜRÜNLER"),
                                menu_buton(
                                    context, kadintumurunler(), "DIŞ MEKAN"),
                                menu_buton(context, kadintumurunler(), ""),
                                menu_buton(
                                    context, kadintumurunler(), "MOBİLYA"),
                                menu_buton(
                                    context, kadintumurunler(), "DEKORASYON"),
                                menu_buton(
                                    context, kadintumurunler(), "YATAK ODASI"),
                                menu_buton(
                                    context, kadintumurunler(), "YEMEK ODASI"),
                                menu_buton(
                                    context, kadintumurunler(), "MUTFAK "),
                                menu_buton(context, kadintumurunler(),
                                    "ÇAMAŞIR / TEMİZLİK"),
                                menu_buton(context, kadintumurunler(), "BANYO"),
                                menu_buton(context, kadintumurunler(), "KOKU"),
                              ] else if (selectedCategory == "Parfüm") ...[
                                menu_buton(
                                    context, kadintumurunler(), " /// NEW"),
                                menu_buton(
                                    context, kadintumurunler(), "TÜM ÜRÜNLER"),
                                menu_buton(
                                    context, kadintumurunler(), "PARFÜM"),
                                menu_buton(
                                    context, kadintumurunler(), "MAKYAJ"),
                                menu_buton(
                                    context, kadintumurunler(), "ZARA HAİR"),
                                menu_buton(context, kadintumurunler(), "ERKEK"),
                                menu_buton(context, kadintumurunler(), "ÇOCUK"),
                              ]
                            ],
                          ),
                        )
                      ],
                    ),
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