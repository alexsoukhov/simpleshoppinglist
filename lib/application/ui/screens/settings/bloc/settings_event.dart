part of 'settings_bloc.dart';

@freezed
class SettingsEvent with _$SettingsEvent {
  const factory SettingsEvent.init() = SettingsEventInit;

  const factory SettingsEvent.reorder(int oldIndex, int newIndex) = SettingsEventReorder;

  const factory SettingsEvent.delete(int idx) = SettingsEventDelete;

  const factory SettingsEvent.add(String value) = SettingsEventAdd;

  const factory SettingsEvent.edit(int idx, String value) = SettingsEventEdit;

  const factory SettingsEvent.switchDate(bool value) = SettingsEventSwitchDate;

  const factory SettingsEvent.changeColor(Color value) = SettingsEventChangeColor;

  const factory SettingsEvent.save() = SettingsEventSave;
}
