import 'package:simpleshoppinglist/sources/preferences/preferences_source.dart';

import '../../domain/preferences_repository.dart';

class PreferencesRepositoryImpl implements PreferencesRepository {
  PreferencesRepositoryImpl(this._preferencesSource);

  final PreferencesSource _preferencesSource;

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
}
