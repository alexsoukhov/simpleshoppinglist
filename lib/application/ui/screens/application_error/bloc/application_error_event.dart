part of 'application_error_bloc.dart';

@freezed
abstract class ApplicationErrorEvent with _$ApplicationErrorEvent {
  const factory ApplicationErrorEvent.handleError({int? code, String? value}) =
      ApplicationErrorEventHandleError;
}
