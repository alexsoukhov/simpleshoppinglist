part of 'settings_bloc.dart';

@freezed
abstract class SettingsState with _$SettingsState {
  const factory SettingsState({
    @Default(false) bool suggestionDate,
    @Default(false) bool loading,
    @Default(<String>[]) List<String> suggestions,
    @Default(false) bool isModified,
  }) = _SettingsState;
}
