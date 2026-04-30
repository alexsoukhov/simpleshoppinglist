import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../generated/l10n.dart';

class PreferencesSource {
  PreferencesSource._();

  static const _cartSuggestionsName = 'cart_suggestions';
  static const _cartSuggestionDateName = 'cart_suggestion_date';
  static const _useDarkThemeName = 'use_dark_theme';
  static const _appSeedColorName = 'app_seed_color';

  static final List<String> _defaultSuggestions = [];

  late final SharedPreferences _preferences;

  static Future<PreferencesSource> create() async {
    final instance = PreferencesSource._();
    await instance._initialize();

    return instance;
  }

  static void initDefaultValues(BuildContext context) {
    _defaultSuggestions.clear();

    _defaultSuggestions.addAll([
      S.of(context).def_suggestion1,
      S.of(context).def_suggestion2,
    ]);
  }

  Future<void> _initialize() async {
    _preferences = await SharedPreferences.getInstance();
  }

  List<String> get cartNameSuggestions =>
      _preferences.getStringList(_cartSuggestionsName) ?? _defaultSuggestions;

  set cartNameSuggestions(List<String> values) =>
      _preferences.setStringList(_cartSuggestionsName, values);

  bool get cartNameSuggestionDate =>
      _preferences.getBool(_cartSuggestionDateName) ?? true;

  set cartNameSuggestionDate(bool value) =>
      _preferences.setBool(_cartSuggestionDateName, value);

  int get appSeedColor => _preferences.getInt(_appSeedColorName) ?? 0xFF2196F3;

  set appSeedColor(int value) => _preferences.setInt(_appSeedColorName, value);

  bool get useDarkTheme =>
      _preferences.getBool(_useDarkThemeName) ?? true;

  set useDarkTheme(bool value) =>
      _preferences.setBool(_useDarkThemeName, value);
}
