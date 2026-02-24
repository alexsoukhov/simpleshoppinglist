// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'carts_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CartsListEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CartsListEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CartsListEvent()';
}


}

/// @nodoc
class $CartsListEventCopyWith<$Res>  {
$CartsListEventCopyWith(CartsListEvent _, $Res Function(CartsListEvent) __);
}


/// Adds pattern-matching-related methods to [CartsListEvent].
extension CartsListEventPatterns on CartsListEvent {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( CartsListEventInit value)?  init,TResult Function( CartsListEventSelect value)?  select,TResult Function( CartsListEventCreateList value)?  createList,TResult Function( CartsListEventReorder value)?  reorder,TResult Function( CartsListEventOpenCartPage value)?  openCartPage,required TResult orElse(),}){
final _that = this;
switch (_that) {
case CartsListEventInit() when init != null:
return init(_that);case CartsListEventSelect() when select != null:
return select(_that);case CartsListEventCreateList() when createList != null:
return createList(_that);case CartsListEventReorder() when reorder != null:
return reorder(_that);case CartsListEventOpenCartPage() when openCartPage != null:
return openCartPage(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( CartsListEventInit value)  init,required TResult Function( CartsListEventSelect value)  select,required TResult Function( CartsListEventCreateList value)  createList,required TResult Function( CartsListEventReorder value)  reorder,required TResult Function( CartsListEventOpenCartPage value)  openCartPage,}){
final _that = this;
switch (_that) {
case CartsListEventInit():
return init(_that);case CartsListEventSelect():
return select(_that);case CartsListEventCreateList():
return createList(_that);case CartsListEventReorder():
return reorder(_that);case CartsListEventOpenCartPage():
return openCartPage(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( CartsListEventInit value)?  init,TResult? Function( CartsListEventSelect value)?  select,TResult? Function( CartsListEventCreateList value)?  createList,TResult? Function( CartsListEventReorder value)?  reorder,TResult? Function( CartsListEventOpenCartPage value)?  openCartPage,}){
final _that = this;
switch (_that) {
case CartsListEventInit() when init != null:
return init(_that);case CartsListEventSelect() when select != null:
return select(_that);case CartsListEventCreateList() when createList != null:
return createList(_that);case CartsListEventReorder() when reorder != null:
return reorder(_that);case CartsListEventOpenCartPage() when openCartPage != null:
return openCartPage(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  init,TResult Function( Cart cart)?  select,TResult Function( String name)?  createList,TResult Function( int oldIndex,  int newIndex)?  reorder,TResult Function()?  openCartPage,required TResult orElse(),}) {final _that = this;
switch (_that) {
case CartsListEventInit() when init != null:
return init();case CartsListEventSelect() when select != null:
return select(_that.cart);case CartsListEventCreateList() when createList != null:
return createList(_that.name);case CartsListEventReorder() when reorder != null:
return reorder(_that.oldIndex,_that.newIndex);case CartsListEventOpenCartPage() when openCartPage != null:
return openCartPage();case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  init,required TResult Function( Cart cart)  select,required TResult Function( String name)  createList,required TResult Function( int oldIndex,  int newIndex)  reorder,required TResult Function()  openCartPage,}) {final _that = this;
switch (_that) {
case CartsListEventInit():
return init();case CartsListEventSelect():
return select(_that.cart);case CartsListEventCreateList():
return createList(_that.name);case CartsListEventReorder():
return reorder(_that.oldIndex,_that.newIndex);case CartsListEventOpenCartPage():
return openCartPage();case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  init,TResult? Function( Cart cart)?  select,TResult? Function( String name)?  createList,TResult? Function( int oldIndex,  int newIndex)?  reorder,TResult? Function()?  openCartPage,}) {final _that = this;
switch (_that) {
case CartsListEventInit() when init != null:
return init();case CartsListEventSelect() when select != null:
return select(_that.cart);case CartsListEventCreateList() when createList != null:
return createList(_that.name);case CartsListEventReorder() when reorder != null:
return reorder(_that.oldIndex,_that.newIndex);case CartsListEventOpenCartPage() when openCartPage != null:
return openCartPage();case _:
  return null;

}
}

}

/// @nodoc


class CartsListEventInit implements CartsListEvent {
  const CartsListEventInit();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CartsListEventInit);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CartsListEvent.init()';
}


}




/// @nodoc


class CartsListEventSelect implements CartsListEvent {
  const CartsListEventSelect(this.cart);
  

 final  Cart cart;

/// Create a copy of CartsListEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CartsListEventSelectCopyWith<CartsListEventSelect> get copyWith => _$CartsListEventSelectCopyWithImpl<CartsListEventSelect>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CartsListEventSelect&&(identical(other.cart, cart) || other.cart == cart));
}


@override
int get hashCode => Object.hash(runtimeType,cart);

@override
String toString() {
  return 'CartsListEvent.select(cart: $cart)';
}


}

/// @nodoc
abstract mixin class $CartsListEventSelectCopyWith<$Res> implements $CartsListEventCopyWith<$Res> {
  factory $CartsListEventSelectCopyWith(CartsListEventSelect value, $Res Function(CartsListEventSelect) _then) = _$CartsListEventSelectCopyWithImpl;
@useResult
$Res call({
 Cart cart
});


$CartCopyWith<$Res> get cart;

}
/// @nodoc
class _$CartsListEventSelectCopyWithImpl<$Res>
    implements $CartsListEventSelectCopyWith<$Res> {
  _$CartsListEventSelectCopyWithImpl(this._self, this._then);

  final CartsListEventSelect _self;
  final $Res Function(CartsListEventSelect) _then;

/// Create a copy of CartsListEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? cart = null,}) {
  return _then(CartsListEventSelect(
null == cart ? _self.cart : cart // ignore: cast_nullable_to_non_nullable
as Cart,
  ));
}

/// Create a copy of CartsListEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CartCopyWith<$Res> get cart {
  
  return $CartCopyWith<$Res>(_self.cart, (value) {
    return _then(_self.copyWith(cart: value));
  });
}
}

/// @nodoc


class CartsListEventCreateList implements CartsListEvent {
  const CartsListEventCreateList(this.name);
  

 final  String name;

/// Create a copy of CartsListEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CartsListEventCreateListCopyWith<CartsListEventCreateList> get copyWith => _$CartsListEventCreateListCopyWithImpl<CartsListEventCreateList>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CartsListEventCreateList&&(identical(other.name, name) || other.name == name));
}


@override
int get hashCode => Object.hash(runtimeType,name);

@override
String toString() {
  return 'CartsListEvent.createList(name: $name)';
}


}

/// @nodoc
abstract mixin class $CartsListEventCreateListCopyWith<$Res> implements $CartsListEventCopyWith<$Res> {
  factory $CartsListEventCreateListCopyWith(CartsListEventCreateList value, $Res Function(CartsListEventCreateList) _then) = _$CartsListEventCreateListCopyWithImpl;
@useResult
$Res call({
 String name
});




}
/// @nodoc
class _$CartsListEventCreateListCopyWithImpl<$Res>
    implements $CartsListEventCreateListCopyWith<$Res> {
  _$CartsListEventCreateListCopyWithImpl(this._self, this._then);

  final CartsListEventCreateList _self;
  final $Res Function(CartsListEventCreateList) _then;

/// Create a copy of CartsListEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? name = null,}) {
  return _then(CartsListEventCreateList(
null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class CartsListEventReorder implements CartsListEvent {
  const CartsListEventReorder(this.oldIndex, this.newIndex);
  

 final  int oldIndex;
 final  int newIndex;

/// Create a copy of CartsListEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CartsListEventReorderCopyWith<CartsListEventReorder> get copyWith => _$CartsListEventReorderCopyWithImpl<CartsListEventReorder>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CartsListEventReorder&&(identical(other.oldIndex, oldIndex) || other.oldIndex == oldIndex)&&(identical(other.newIndex, newIndex) || other.newIndex == newIndex));
}


@override
int get hashCode => Object.hash(runtimeType,oldIndex,newIndex);

@override
String toString() {
  return 'CartsListEvent.reorder(oldIndex: $oldIndex, newIndex: $newIndex)';
}


}

/// @nodoc
abstract mixin class $CartsListEventReorderCopyWith<$Res> implements $CartsListEventCopyWith<$Res> {
  factory $CartsListEventReorderCopyWith(CartsListEventReorder value, $Res Function(CartsListEventReorder) _then) = _$CartsListEventReorderCopyWithImpl;
@useResult
$Res call({
 int oldIndex, int newIndex
});




}
/// @nodoc
class _$CartsListEventReorderCopyWithImpl<$Res>
    implements $CartsListEventReorderCopyWith<$Res> {
  _$CartsListEventReorderCopyWithImpl(this._self, this._then);

  final CartsListEventReorder _self;
  final $Res Function(CartsListEventReorder) _then;

/// Create a copy of CartsListEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? oldIndex = null,Object? newIndex = null,}) {
  return _then(CartsListEventReorder(
null == oldIndex ? _self.oldIndex : oldIndex // ignore: cast_nullable_to_non_nullable
as int,null == newIndex ? _self.newIndex : newIndex // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class CartsListEventOpenCartPage implements CartsListEvent {
  const CartsListEventOpenCartPage();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CartsListEventOpenCartPage);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CartsListEvent.openCartPage()';
}


}




/// @nodoc
mixin _$CartsListState {

 List<Cart> get data; bool get loading; Cart? get selectedCart;
/// Create a copy of CartsListState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CartsListStateCopyWith<CartsListState> get copyWith => _$CartsListStateCopyWithImpl<CartsListState>(this as CartsListState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CartsListState&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.loading, loading) || other.loading == loading)&&(identical(other.selectedCart, selectedCart) || other.selectedCart == selectedCart));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data),loading,selectedCart);

@override
String toString() {
  return 'CartsListState(data: $data, loading: $loading, selectedCart: $selectedCart)';
}


}

/// @nodoc
abstract mixin class $CartsListStateCopyWith<$Res>  {
  factory $CartsListStateCopyWith(CartsListState value, $Res Function(CartsListState) _then) = _$CartsListStateCopyWithImpl;
@useResult
$Res call({
 List<Cart> data, bool loading, Cart? selectedCart
});


$CartCopyWith<$Res>? get selectedCart;

}
/// @nodoc
class _$CartsListStateCopyWithImpl<$Res>
    implements $CartsListStateCopyWith<$Res> {
  _$CartsListStateCopyWithImpl(this._self, this._then);

  final CartsListState _self;
  final $Res Function(CartsListState) _then;

/// Create a copy of CartsListState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = null,Object? loading = null,Object? selectedCart = freezed,}) {
  return _then(_self.copyWith(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<Cart>,loading: null == loading ? _self.loading : loading // ignore: cast_nullable_to_non_nullable
as bool,selectedCart: freezed == selectedCart ? _self.selectedCart : selectedCart // ignore: cast_nullable_to_non_nullable
as Cart?,
  ));
}
/// Create a copy of CartsListState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CartCopyWith<$Res>? get selectedCart {
    if (_self.selectedCart == null) {
    return null;
  }

  return $CartCopyWith<$Res>(_self.selectedCart!, (value) {
    return _then(_self.copyWith(selectedCart: value));
  });
}
}


/// Adds pattern-matching-related methods to [CartsListState].
extension CartsListStatePatterns on CartsListState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CartsListState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CartsListState() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CartsListState value)  $default,){
final _that = this;
switch (_that) {
case _CartsListState():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CartsListState value)?  $default,){
final _that = this;
switch (_that) {
case _CartsListState() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<Cart> data,  bool loading,  Cart? selectedCart)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CartsListState() when $default != null:
return $default(_that.data,_that.loading,_that.selectedCart);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<Cart> data,  bool loading,  Cart? selectedCart)  $default,) {final _that = this;
switch (_that) {
case _CartsListState():
return $default(_that.data,_that.loading,_that.selectedCart);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<Cart> data,  bool loading,  Cart? selectedCart)?  $default,) {final _that = this;
switch (_that) {
case _CartsListState() when $default != null:
return $default(_that.data,_that.loading,_that.selectedCart);case _:
  return null;

}
}

}

/// @nodoc


class _CartsListState implements CartsListState {
  const _CartsListState({final  List<Cart> data = const <Cart>[], this.loading = false, this.selectedCart = null}): _data = data;
  

 final  List<Cart> _data;
@override@JsonKey() List<Cart> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}

@override@JsonKey() final  bool loading;
@override@JsonKey() final  Cart? selectedCart;

/// Create a copy of CartsListState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CartsListStateCopyWith<_CartsListState> get copyWith => __$CartsListStateCopyWithImpl<_CartsListState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CartsListState&&const DeepCollectionEquality().equals(other._data, _data)&&(identical(other.loading, loading) || other.loading == loading)&&(identical(other.selectedCart, selectedCart) || other.selectedCart == selectedCart));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_data),loading,selectedCart);

@override
String toString() {
  return 'CartsListState(data: $data, loading: $loading, selectedCart: $selectedCart)';
}


}

/// @nodoc
abstract mixin class _$CartsListStateCopyWith<$Res> implements $CartsListStateCopyWith<$Res> {
  factory _$CartsListStateCopyWith(_CartsListState value, $Res Function(_CartsListState) _then) = __$CartsListStateCopyWithImpl;
@override @useResult
$Res call({
 List<Cart> data, bool loading, Cart? selectedCart
});


@override $CartCopyWith<$Res>? get selectedCart;

}
/// @nodoc
class __$CartsListStateCopyWithImpl<$Res>
    implements _$CartsListStateCopyWith<$Res> {
  __$CartsListStateCopyWithImpl(this._self, this._then);

  final _CartsListState _self;
  final $Res Function(_CartsListState) _then;

/// Create a copy of CartsListState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = null,Object? loading = null,Object? selectedCart = freezed,}) {
  return _then(_CartsListState(
data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<Cart>,loading: null == loading ? _self.loading : loading // ignore: cast_nullable_to_non_nullable
as bool,selectedCart: freezed == selectedCart ? _self.selectedCart : selectedCart // ignore: cast_nullable_to_non_nullable
as Cart?,
  ));
}

/// Create a copy of CartsListState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CartCopyWith<$Res>? get selectedCart {
    if (_self.selectedCart == null) {
    return null;
  }

  return $CartCopyWith<$Res>(_self.selectedCart!, (value) {
    return _then(_self.copyWith(selectedCart: value));
  });
}
}

// dart format on
