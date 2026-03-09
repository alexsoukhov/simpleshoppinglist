part of 'settings_bloc.dart';

@freezed
class SettingsEvent with _$SettingsEvent {
  const factory SettingsEvent.init() = SettingsEventInit;

  const factory SettingsEvent.createItem(String name) = SettingsEventCreateItem;

  const factory SettingsEvent.reorder(int oldIndex, int newIndex) = SettingsEventReorder;

  const factory SettingsEvent.delete(int idx) = SettingsEventDelete;

  const factory SettingsEvent.add(String value) = SettingsEventAdd;

  const factory SettingsEvent.switchDate(bool value) = SettingsEventSwitchDate;

  const factory SettingsEvent.save() = SettingsEventSave;
}
