import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;

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
  }) async {
    if (packagesLoaded?.isNotEmpty ?? false) {
      List<Package> packages = [];

      await Future.forEach(packagesLoaded!, (p) async {
        String path = _assetPath(p, _activeLocale!);

        String jsonString = await rootBundle.loadString(path);

        Map<String, dynamic> data = jsonDecode(jsonString);

        packages.add(Package(name: p, data: data));
      });

      this.packagesLoaded = packages;
    }
  }

  String _assetPath(String package, Locale locale) =>
      "packages/$package/lang/${locale.toString()}.json";

  dynamic getValue(String content) {
    if (content.contains(':')) {
      final key = content.split(":").first;

      Package package = _packagesLoaded.firstWhere((p) => p.name == key);

      final String value = content.split(":").last;

      return package.data[value];
    }
  }
}

extension LocalizeStrings on String {
  String v({String? fallback, List<String>? params}) {
    dynamic value = Localize.shared.getValue(this);

    if (value is! String) {
      return fallback ?? "[NOT FOUND]";
    }

    return value;
  }
}
