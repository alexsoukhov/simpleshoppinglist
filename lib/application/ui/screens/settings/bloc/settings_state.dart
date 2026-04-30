part of 'settings_bloc.dart';

@freezed
abstract class SettingsState with _$SettingsState {
  const SettingsState._();

  const factory SettingsState({
    @Default(false) bool suggestionDate,
    @Default(false) bool useDarkTheme,
    @Default(false) bool loading,
    @Default(<String>[]) List<String> suggestions,
    @Default(false) bool isModified,
    @Default(Colors.blue) Color seedColor,
  }) = _SettingsState;

  bool isSame(SettingsState state) {
    return suggestionDate == state.suggestionDate &&
        listEquals(suggestions, state.suggestions) &&
        seedColor == state.seedColor && useDarkTheme == state.useDarkTheme;
  }
}
