import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:simpleshoppinglist/sources/preferences/preferences_source.dart';

import '../../domain/preferences_repository.dart';

class PreferencesRepositoryImpl implements PreferencesRepository {
  PreferencesRepositoryImpl(this._preferencesSource) {
    _appSeedColorStreamController.sink.add(appSeedColor);
    _useDarkThemeStreamController.sink.add(useDarkTheme);
  }

  final PreferencesSource _preferencesSource;

  final StreamController<Color> _appSeedColorStreamController =
      StreamController<Color>();

  final StreamController<bool> _useDarkThemeStreamController =
      StreamController<bool>();

  @override
  List<String> get cartNameSuggestions =>
      _preferencesSource.cartNameSuggestions;

  @override
  set cartNameSuggestions(List<String> value) =>
      _preferencesSource.cartNameSuggestions = value;

  @override
  bool get cartNameSuggestionDate => _preferencesSource.cartNameSuggestionDate;

  @override
  set cartNameSuggestionDate(bool value) =>
      _preferencesSource.cartNameSuggestionDate = value;

  @override
  Color get appSeedColor => Color(_preferencesSource.appSeedColor);

  @override
  set appSeedColor(Color value) {
    _preferencesSource.appSeedColor = value.toARGB32();
    _notifyAppSeedColor();
  }

  @override
  Stream<Color> get appSeedColorStream => _appSeedColorStreamController.stream;

  void _notifyAppSeedColor() {
    _appSeedColorStreamController.sink.add(appSeedColor);
  }

  @override
  bool get useDarkTheme => _preferencesSource.useDarkTheme;

  @override
  set useDarkTheme(bool value) {
    _preferencesSource.useDarkTheme = value;
    _notifyUseDarkTheme();
  }

  @override
  Stream<bool> get useDarkThemeStream => _useDarkThemeStreamController.stream;

  void _notifyUseDarkTheme() {
    _useDarkThemeStreamController.sink.add(useDarkTheme);
  }
}
