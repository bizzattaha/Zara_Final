import 'package:shared_preferences/shared_preferences.dart';

class VeriIslemleri {
  static Future<void> urunEkle(String id, String listName) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String> urunListesi = prefs.getStringList(listName) ?? [];
    urunListesi.add(id);
    await prefs.setStringList(listName, urunListesi);
  }

  static Future<List<String>> getListe(String listName) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getStringList(listName) ?? [];
  }
}

class Sepet {
  static Future<void> urunEkle(String id) async {
    await VeriIslemleri.urunEkle(id, 'sepetListesi');
  }

  static Future<List<String>> get sepetListesi async {
    return await VeriIslemleri.getListe('sepetListesi');
  }
}

class Favori {
  static Future<void> urunEkle(String id) async {
    await VeriIslemleri.urunEkle(id, 'favoriListesi');
  }

  static Future<List<String>> get favoriListesi async {
    return await VeriIslemleri.getListe('favoriListesi');
  }
}
