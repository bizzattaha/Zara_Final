// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class anasayfa extends StatelessWidget {
  anasayfa({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DecoratedBox(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                "/Users/bizzattaha/Desktop/selling_market/assets/images/zara3.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.only(top: 60),
                child: Image.asset(
                  "/Users/bizzattaha/Desktop/selling_market/zara.png",
                ),
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        bottom: 25, left: 10, right: 10, top: 25),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Container(
                        color: Colors.black.withOpacity(0.5),
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: const TextField(
                          decoration: InputDecoration(
                            hintText: 'Search...',
                            hintStyle: TextStyle(color: Colors.white),
                            border: InputBorder.none,
                            suffixIcon: Icon(
                              Icons.search,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
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
                    GestureDetector(
                      onTap: () {
                        Navigator.popAndPushNamed(context, "/anasayfa");
                      },
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Text(
                          "ANA SAYFA",
                          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.popAndPushNamed(context, "/menu");
                      },
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 8, horizontal: 16),
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
                        padding:
                            EdgeInsets.symmetric(vertical: 8, horizontal: 16),
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
                        padding:
                            EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Text(
                          "SEPET (0)",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
