import 'package:flutter/material.dart';

import '../core/settings/settings.dart';
import 'app_widget.dart';

class AppModule {
  final AppWidget _widget;
  final Settings _settings;

  AppModule(this._settings, this._widget);

  Future<void> run() async {
    runApp(_widget);
  }
}
