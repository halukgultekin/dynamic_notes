import 'package:flutter/material.dart';
import 'package:flutter_dinamik_not/constants/app_constants.dart';
import 'package:flutter_dinamik_not/widgets/ortalama_hesapla_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp
 extends StatelessWidget {
  const MyApp
  ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dinamik Ortalama Hesaplama',
      theme: ThemeData(primarySwatch: Sabitler.anaRenk, visualDensity: VisualDensity.adaptivePlatformDensity), // visual diğer platformlarda da sıkıntı olmadan açabiliyor.
      debugShowCheckedModeBanner: false,
      home: OrtalamaHesaplaPage(),
    );
  }
}