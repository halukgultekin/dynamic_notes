import 'package:flutter/material.dart';
import 'package:flutter_dinamik_not/model/ders.dart';

class DataHelper {
  static List<Ders> tumeklenenDersler = [];
  static dersEkle(Ders ders) {
    tumeklenenDersler.add(ders);
  }

  static ortalamaHesapla() {
    double toplamNot = 0;
    double toplamKredi = 0;
    tumeklenenDersler.forEach((element) {
      toplamNot = toplamNot + (element.harfDegeri * element.krediDegeri);
      toplamKredi += element.krediDegeri;
    });
    return toplamNot / toplamKredi;
  }

  static List<String> _tumDersHarfler() {
    return ['AA', 'BA', 'BB', 'CB', 'CC', 'DC', 'DD', 'FF'];
  }

  static double _harfiNotaCevir(String harf) {
    switch (harf) {
      case 'AA':
        return 4;
      case 'BA':
        return 3.5;
      case 'BB':
        return 3;
      case 'CB':
        return 2.5;
      case 'CC':
        return 2;
      case 'DC':
        return 1.5;
      case 'DD':
        return 1;
      case 'FF':
        return 0;
      default:
        return 1;
    }
  }

  static List<DropdownMenuItem<double>> tumDerslerinHarfleri() {
    return _tumDersHarfler()
        .map((e) => DropdownMenuItem(
              child: Text(e),
              value: _harfiNotaCevir(e),
            ))
        .toList();
  }

  static List<int> _tumKrediler() {
    return List.generate(10, (index) => index + 1).toList();
  }

  static List<DropdownMenuItem<double>> tumDerslerinKredileri() {
    return _tumKrediler()
        .map(
          (e) => DropdownMenuItem(
            child: Text(e.toString()),
            value: e.toDouble(),
          ),
        )
        .toList();
  }
}
