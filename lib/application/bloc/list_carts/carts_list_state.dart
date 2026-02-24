part of 'carts_list_bloc.dart';

@freezed
abstract class CartsListState with _$CartsListState {
  const factory CartsListState({
    @Default(<Cart>[]) List<Cart> data,
    @Default(false) bool loading,
  }) = _CartsListState;
}
