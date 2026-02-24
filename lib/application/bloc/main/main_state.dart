part of 'main_bloc.dart';

@freezed
abstract class MainState with _$MainState {
  const factory MainState({
    @Default(<Cart>[]) List<Cart> data,
    @Default(false) bool loading,
  }) = _MainState;
}
