import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../generated/l10n.dart';

class PreferencesSource {
  PreferencesSource._();

  static const _cartSuggestionsName = 'cart_suggestions';
  static const _cartSuggestionDateName = 'cart_suggestion_date';

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

  List<String> get cartSuggestions =>
      _preferences.getStringList(_cartSuggestionsName) ?? _defaultSuggestions;

  set cartSuggestions(List<String> values) =>
      _preferences.setStringList(_cartSuggestionsName, values);

  bool get cartSuggestionDate =>
      _preferences.getBool(_cartSuggestionDateName) ?? true;

  set cartSuggestionDate(bool value) =>
      _preferences.setBool(_cartSuggestionDateName, value);
}
