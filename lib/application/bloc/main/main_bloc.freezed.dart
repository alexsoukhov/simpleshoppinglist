// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MainEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MainEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MainEvent()';
}


}

/// @nodoc
class $MainEventCopyWith<$Res>  {
$MainEventCopyWith(MainEvent _, $Res Function(MainEvent) __);
}


/// Adds pattern-matching-related methods to [MainEvent].
extension MainEventPatterns on MainEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( MainEventInit value)?  init,TResult Function( MainEventSelect value)?  select,TResult Function( MainEventCreateList value)?  createList,TResult Function( MainEventOpenCartPage value)?  openCartPage,required TResult orElse(),}){
final _that = this;
switch (_that) {
case MainEventInit() when init != null:
return init(_that);case MainEventSelect() when select != null:
return select(_that);case MainEventCreateList() when createList != null:
return createList(_that);case MainEventOpenCartPage() when openCartPage != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( MainEventInit value)  init,required TResult Function( MainEventSelect value)  select,required TResult Function( MainEventCreateList value)  createList,required TResult Function( MainEventOpenCartPage value)  openCartPage,}){
final _that = this;
switch (_that) {
case MainEventInit():
return init(_that);case MainEventSelect():
return select(_that);case MainEventCreateList():
return createList(_that);case MainEventOpenCartPage():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( MainEventInit value)?  init,TResult? Function( MainEventSelect value)?  select,TResult? Function( MainEventCreateList value)?  createList,TResult? Function( MainEventOpenCartPage value)?  openCartPage,}){
final _that = this;
switch (_that) {
case MainEventInit() when init != null:
return init(_that);case MainEventSelect() when select != null:
return select(_that);case MainEventCreateList() when createList != null:
return createList(_that);case MainEventOpenCartPage() when openCartPage != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  init,TResult Function( Cart cart)?  select,TResult Function()?  createList,TResult Function()?  openCartPage,required TResult orElse(),}) {final _that = this;
switch (_that) {
case MainEventInit() when init != null:
return init();case MainEventSelect() when select != null:
return select(_that.cart);case MainEventCreateList() when createList != null:
return createList();case MainEventOpenCartPage() when openCartPage != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  init,required TResult Function( Cart cart)  select,required TResult Function()  createList,required TResult Function()  openCartPage,}) {final _that = this;
switch (_that) {
case MainEventInit():
return init();case MainEventSelect():
return select(_that.cart);case MainEventCreateList():
return createList();case MainEventOpenCartPage():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  init,TResult? Function( Cart cart)?  select,TResult? Function()?  createList,TResult? Function()?  openCartPage,}) {final _that = this;
switch (_that) {
case MainEventInit() when init != null:
return init();case MainEventSelect() when select != null:
return select(_that.cart);case MainEventCreateList() when createList != null:
return createList();case MainEventOpenCartPage() when openCartPage != null:
return openCartPage();case _:
  return null;

}
}

}

/// @nodoc


class MainEventInit implements MainEvent {
  const MainEventInit();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MainEventInit);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MainEvent.init()';
}


}




/// @nodoc


class MainEventSelect implements MainEvent {
  const MainEventSelect(this.cart);
  

 final  Cart cart;

/// Create a copy of MainEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MainEventSelectCopyWith<MainEventSelect> get copyWith => _$MainEventSelectCopyWithImpl<MainEventSelect>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MainEventSelect&&(identical(other.cart, cart) || other.cart == cart));
}


@override
int get hashCode => Object.hash(runtimeType,cart);

@override
String toString() {
  return 'MainEvent.select(cart: $cart)';
}


}

/// @nodoc
abstract mixin class $MainEventSelectCopyWith<$Res> implements $MainEventCopyWith<$Res> {
  factory $MainEventSelectCopyWith(MainEventSelect value, $Res Function(MainEventSelect) _then) = _$MainEventSelectCopyWithImpl;
@useResult
$Res call({
 Cart cart
});


$CartCopyWith<$Res> get cart;

}
/// @nodoc
class _$MainEventSelectCopyWithImpl<$Res>
    implements $MainEventSelectCopyWith<$Res> {
  _$MainEventSelectCopyWithImpl(this._self, this._then);

  final MainEventSelect _self;
  final $Res Function(MainEventSelect) _then;

/// Create a copy of MainEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? cart = null,}) {
  return _then(MainEventSelect(
null == cart ? _self.cart : cart // ignore: cast_nullable_to_non_nullable
as Cart,
  ));
}

/// Create a copy of MainEvent
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


class MainEventCreateList implements MainEvent {
  const MainEventCreateList();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MainEventCreateList);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MainEvent.createList()';
}


}




/// @nodoc


class MainEventOpenCartPage implements MainEvent {
  const MainEventOpenCartPage();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MainEventOpenCartPage);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MainEvent.openCartPage()';
}


}




/// @nodoc
mixin _$MainState {

 List<Cart> get data; bool get loading;
/// Create a copy of MainState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MainStateCopyWith<MainState> get copyWith => _$MainStateCopyWithImpl<MainState>(this as MainState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MainState&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.loading, loading) || other.loading == loading));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data),loading);

@override
String toString() {
  return 'MainState(data: $data, loading: $loading)';
}


}

/// @nodoc
abstract mixin class $MainStateCopyWith<$Res>  {
  factory $MainStateCopyWith(MainState value, $Res Function(MainState) _then) = _$MainStateCopyWithImpl;
@useResult
$Res call({
 List<Cart> data, bool loading
});




}
/// @nodoc
class _$MainStateCopyWithImpl<$Res>
    implements $MainStateCopyWith<$Res> {
  _$MainStateCopyWithImpl(this._self, this._then);

  final MainState _self;
  final $Res Function(MainState) _then;

/// Create a copy of MainState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = null,Object? loading = null,}) {
  return _then(_self.copyWith(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<Cart>,loading: null == loading ? _self.loading : loading // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [MainState].
extension MainStatePatterns on MainState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MainState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MainState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MainState value)  $default,){
final _that = this;
switch (_that) {
case _MainState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MainState value)?  $default,){
final _that = this;
switch (_that) {
case _MainState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<Cart> data,  bool loading)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MainState() when $default != null:
return $default(_that.data,_that.loading);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<Cart> data,  bool loading)  $default,) {final _that = this;
switch (_that) {
case _MainState():
return $default(_that.data,_that.loading);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<Cart> data,  bool loading)?  $default,) {final _that = this;
switch (_that) {
case _MainState() when $default != null:
return $default(_that.data,_that.loading);case _:
  return null;

}
}

}

/// @nodoc


class _MainState implements MainState {
  const _MainState({final  List<Cart> data = const <Cart>[], this.loading = false}): _data = data;
  

 final  List<Cart> _data;
@override@JsonKey() List<Cart> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}

@override@JsonKey() final  bool loading;

/// Create a copy of MainState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MainStateCopyWith<_MainState> get copyWith => __$MainStateCopyWithImpl<_MainState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MainState&&const DeepCollectionEquality().equals(other._data, _data)&&(identical(other.loading, loading) || other.loading == loading));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_data),loading);

@override
String toString() {
  return 'MainState(data: $data, loading: $loading)';
}


}

/// @nodoc
abstract mixin class _$MainStateCopyWith<$Res> implements $MainStateCopyWith<$Res> {
  factory _$MainStateCopyWith(_MainState value, $Res Function(_MainState) _then) = __$MainStateCopyWithImpl;
@override @useResult
$Res call({
 List<Cart> data, bool loading
});




}
/// @nodoc
class __$MainStateCopyWithImpl<$Res>
    implements _$MainStateCopyWith<$Res> {
  __$MainStateCopyWithImpl(this._self, this._then);

  final _MainState _self;
  final $Res Function(_MainState) _then;

/// Create a copy of MainState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = null,Object? loading = null,}) {
  return _then(_MainState(
data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<Cart>,loading: null == loading ? _self.loading : loading // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
