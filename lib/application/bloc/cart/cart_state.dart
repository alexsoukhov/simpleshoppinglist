part of 'cart_bloc.dart';

@freezed
abstract class CartState with _$CartState {
  const factory CartState({
    @Default(null) Cart? data,
    @Default(false) bool loading,
    @Default(<String>[]) List<String> suggestions,
  }) = _CartState;
}
