import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:selling_market/Screens/anasayfa.dart';
import 'package:selling_market/Screens/erkektumurunler.dart';
import 'package:selling_market/Screens/hesap.dart';
import 'package:selling_market/Screens/kadintumurunler.dart';
import 'package:selling_market/Screens/menu.dart';
import 'package:selling_market/Screens/sepet.dart';
import 'package:selling_market/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Zara',
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en'),
        Locale('tr'),
      ],
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.system,
      routes: {
        '/anasayfa': (context) => anasayfa(),
        '/menu': (context) => Menu(),
        '/hesap': (context) => Hesap(),
        '/sepet': (context) => Sepet(),
        '/kadintumurunler': (context) => kadintumurunler(),
        '/erkektumurunler': (context) => erkektumurunler(),
      },
      initialRoute: '/anasayfa',
    );
  }

  static void setLocale(BuildContext context, Locale locale) {}
}
