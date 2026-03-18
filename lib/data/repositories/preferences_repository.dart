import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:simpleshoppinglist/sources/preferences/preferences_source.dart';

class PreferencesRepository {
  PreferencesRepository(this._preferencesSource);

  final PreferencesSource _preferencesSource;

  static PreferencesRepository of(BuildContext context) =>
      context.read<PreferencesRepository>();

  List<String> get cartNameSuggestions => _preferencesSource.cartNameSuggestions;

  set cartNameSuggestions(List<String> value) =>
      _preferencesSource.cartNameSuggestions = value;

  bool get cartNameSuggestionDate => _preferencesSource.cartNameSuggestionDate;

  set cartNameSuggestionDate(bool value) =>
      _preferencesSource.cartNameSuggestionDate = value;
}
