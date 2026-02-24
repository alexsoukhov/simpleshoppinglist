part of 'application_error_bloc.dart';

@freezed
class ApplicationErrorState with _$ApplicationErrorState {
  const factory ApplicationErrorState.initial() = ApplicationErrorStateCurrent;

  const factory ApplicationErrorState.show({
    required int code,
    required String value,
  }) = ApplicationErrorStateShow;
}
