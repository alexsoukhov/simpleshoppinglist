abstract class PreferencesRepository {
  List<String> get cartNameSuggestions;

  set cartNameSuggestions(List<String> value);

  bool get cartNameSuggestionDate;

  set cartNameSuggestionDate(bool value);
}
