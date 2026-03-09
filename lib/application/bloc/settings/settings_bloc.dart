import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../repositories/preferences_repository.dart';
import '../application_error/application_error_bloc.dart';

part 'settings_bloc.freezed.dart';

part 'settings_event.dart';

part 'settings_state.dart';

class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  SettingsBloc(this._preferencesRepository, this._errorBloc)
    : super(
        SettingsState(
          loading: true,
          suggestions: _preferencesRepository.cartNameSuggestions,
          suggestionDate: _preferencesRepository.cartNameSuggestionDate,
        ),
      ) {
    _originalSettings = state.copyWith();
    on<SettingsEventReorder>(_reorder);
    on<SettingsEventDelete>(_delete);
    on<SettingsEventAdd>(_add);
    on<SettingsEventSwitchDate>(_switchDate);
    on<SettingsEventSave>(_save);
  }

  final PreferencesRepository _preferencesRepository;
  final ApplicationErrorBloc _errorBloc;
  late final SettingsState _originalSettings;

  static SettingsBloc of(BuildContext context) =>
      BlocProvider.of<SettingsBloc>(context);

  void _reorder(
    SettingsEventReorder event,
    Emitter<SettingsState> emit,
  ) {
    final oldIndex = event.oldIndex;
    var newIndex = event.newIndex;

    if (oldIndex < newIndex) {
      newIndex -= 1;
    }

    final list = state.suggestions.toList();
    final item = list.removeAt(oldIndex);
    list.insert(newIndex, item);

    emit(state.copyWith(suggestions: list));
  }

  void _delete(
    SettingsEventDelete event,
    Emitter<SettingsState> emit,
  )  {
    final list = state.suggestions.toList();
    list.removeAt(event.idx);

    SettingsState newState = state.copyWith(suggestions: list);

    emit(
      newState.copyWith(
        suggestions: list,
        isModified: _originalSettings != newState,
      ),
    );
  }

  void _add(SettingsEventAdd event, Emitter<SettingsState> emit) {
    if (event.value.isNotEmpty) {
      final list = state.suggestions.toList();
      list.add(event.value);

      SettingsState newState = state.copyWith(suggestions: list);

      emit(
        newState.copyWith(
          suggestions: list,
          isModified: _originalSettings != newState,
        ),
      );
    }
  }

  void _switchDate(
    SettingsEventSwitchDate event,
    Emitter<SettingsState> emit,
  ) {
    SettingsState newState = state.copyWith(
      suggestionDate: !state.suggestionDate,
    );

    emit(
      newState.copyWith(
        suggestionDate: !state.suggestionDate,
        isModified: _originalSettings != newState,
      ),
    );
  }

  Future<void> _save(
    SettingsEventSave event,
    Emitter<SettingsState> emit,
  ) async {

  }
}
