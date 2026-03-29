import 'dart:ui';

abstract class PreferencesRepository {
  List<String> get cartNameSuggestions;

  set cartNameSuggestions(List<String> value);

  bool get cartNameSuggestionDate;

  set cartNameSuggestionDate(bool value);

  Color get appSeedColor;

  set appSeedColor(Color value);

  Stream<Color> get appSeedColorStream;
}
