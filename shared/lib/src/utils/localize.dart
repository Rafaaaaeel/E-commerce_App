import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';

import 'package.dart';

class Localize {
  final _packagesLoaded = <Package>[];

  final List<Locale> _supportedLocales = <Locale>[];

  Locale? _activeLocale;

  static final Localize _instance = Localize._();

  static Localize get shared => _instance;

  Localize._();

  set supportedLocales(List<Locale> supportedLocales) {
    _supportedLocales.clear();
    _supportedLocales.addAll(supportedLocales);
  }

  set packagesLoaded(List<Package> packages) {
    _packagesLoaded.addAll(packages);
  }

  void load({
    Locale? activeLocale,
    List<Locale>? supportedLocales,
  }) {
    if (supportedLocales?.isNotEmpty ?? false) {
      this.supportedLocales = supportedLocales!;
    }

    if (_supportedLocales.contains(activeLocale)) {
      _activeLocale = activeLocale;
    }
  }

  void setup({
    List<String>? packagesLoaded,
  }) {
    if (packagesLoaded?.isNotEmpty ?? false) {
      packagesLoaded!.forEach((p) {
        String path = _assetPath(p, _activeLocale!);
    
        String jsonContent = File(path).readAsStringSync();

        Map<String, dynamic> data = jsonDecode(jsonContent);
        
        print(data);
      });
    }
  }

  String _assetPath(String package, Locale locale) =>
      "packages/$package/lang/${locale.toString()}.json";

  dynamic getValue(String key, String value) {
    Package selectecPackaged = _packagesLoaded.firstWhere((p) => p.name == key);
  }
}
