import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:simpleshoppinglist/sources/preferences/preferences_source.dart';

class PreferencesRepository {
  PreferencesRepository(this._preferencesSource);

  final PreferencesSource _preferencesSource;

  static PreferencesRepository of(BuildContext context) =>
      context.read<PreferencesRepository>();

  List<String> getSuggestionsForValue(String value) {
    List<String> vals = _preferencesSource.cartSuggestions;

    List<String> result = [];

    String v = value.toLowerCase();

    result = vals.where((e) => !v.contains(e.toLowerCase())).toList();

    if (_preferencesSource.cartSuggestionDate) {
      String date = DateFormat.yMMMd().format(
        DateTime.now(),
      );

      if (!v.contains(date.toLowerCase())) {
        result.insert(0, date);
      }
    }

    return result;
  }
}
