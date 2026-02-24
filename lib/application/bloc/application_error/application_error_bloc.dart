import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../config.dart';
import '../../../utils/logger.dart';

part 'application_error_bloc.freezed.dart';

part 'application_error_event.dart';

part 'application_error_state.dart';

class ApplicationErrorBloc
    extends Bloc<ApplicationErrorEvent, ApplicationErrorState> {
  ApplicationErrorBloc() : super(const ApplicationErrorState.initial()) {
    on<ApplicationErrorEventHandleError>(_handleError);
  }

  static ApplicationErrorBloc of(BuildContext context) =>
      BlocProvider.of<ApplicationErrorBloc>(context);

  static void handleError(ApplicationErrorBloc bloc, Object ex) {
    if (config.isStackTrace) {
      String stackTrace = '';

      try {
        dynamic e = ex;
        stackTrace = '\nStacktrace:\n${e.stackTrace}';
      } catch (_) {}

      logger.d('Exception: $ex$stackTrace\n');
    }

    bloc.add(const ApplicationErrorEvent.handleError(code: -1, value: ''));
  }

  static void handleErrorValue(ApplicationErrorBloc bloc, String value) {
    bloc.add(ApplicationErrorEvent.handleError(code: -1, value: value));
  }

  Future<void> _handleError(
    ApplicationErrorEventHandleError event,
    Emitter<ApplicationErrorState> emit,
  ) async {
    // Other - show error
    emit(
      ApplicationErrorStateShow(
        code: event.code ?? -1,
        value: event.value ?? '',
      ),
    );

    emit(const ApplicationErrorStateCurrent());
  }
}
