// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CartEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CartEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CartEvent()';
}


}

/// @nodoc
class $CartEventCopyWith<$Res>  {
$CartEventCopyWith(CartEvent _, $Res Function(CartEvent) __);
}


/// Adds pattern-matching-related methods to [CartEvent].
extension CartEventPatterns on CartEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( CartEventInit value)?  init,TResult Function( CartEventCreateItem value)?  createItem,TResult Function( CartEventReorder value)?  reorder,TResult Function( CartEventToggle value)?  toggle,TResult Function( CartEventDelete value)?  delete,required TResult orElse(),}){
final _that = this;
switch (_that) {
case CartEventInit() when init != null:
return init(_that);case CartEventCreateItem() when createItem != null:
return createItem(_that);case CartEventReorder() when reorder != null:
return reorder(_that);case CartEventToggle() when toggle != null:
return toggle(_that);case CartEventDelete() when delete != null:
return delete(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( CartEventInit value)  init,required TResult Function( CartEventCreateItem value)  createItem,required TResult Function( CartEventReorder value)  reorder,required TResult Function( CartEventToggle value)  toggle,required TResult Function( CartEventDelete value)  delete,}){
final _that = this;
switch (_that) {
case CartEventInit():
return init(_that);case CartEventCreateItem():
return createItem(_that);case CartEventReorder():
return reorder(_that);case CartEventToggle():
return toggle(_that);case CartEventDelete():
return delete(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( CartEventInit value)?  init,TResult? Function( CartEventCreateItem value)?  createItem,TResult? Function( CartEventReorder value)?  reorder,TResult? Function( CartEventToggle value)?  toggle,TResult? Function( CartEventDelete value)?  delete,}){
final _that = this;
switch (_that) {
case CartEventInit() when init != null:
return init(_that);case CartEventCreateItem() when createItem != null:
return createItem(_that);case CartEventReorder() when reorder != null:
return reorder(_that);case CartEventToggle() when toggle != null:
return toggle(_that);case CartEventDelete() when delete != null:
return delete(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  init,TResult Function( String name)?  createItem,TResult Function( int oldIndex,  int newIndex)?  reorder,TResult Function( CartItem item)?  toggle,TResult Function( CartItem item)?  delete,required TResult orElse(),}) {final _that = this;
switch (_that) {
case CartEventInit() when init != null:
return init();case CartEventCreateItem() when createItem != null:
return createItem(_that.name);case CartEventReorder() when reorder != null:
return reorder(_that.oldIndex,_that.newIndex);case CartEventToggle() when toggle != null:
return toggle(_that.item);case CartEventDelete() when delete != null:
return delete(_that.item);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  init,required TResult Function( String name)  createItem,required TResult Function( int oldIndex,  int newIndex)  reorder,required TResult Function( CartItem item)  toggle,required TResult Function( CartItem item)  delete,}) {final _that = this;
switch (_that) {
case CartEventInit():
return init();case CartEventCreateItem():
return createItem(_that.name);case CartEventReorder():
return reorder(_that.oldIndex,_that.newIndex);case CartEventToggle():
return toggle(_that.item);case CartEventDelete():
return delete(_that.item);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  init,TResult? Function( String name)?  createItem,TResult? Function( int oldIndex,  int newIndex)?  reorder,TResult? Function( CartItem item)?  toggle,TResult? Function( CartItem item)?  delete,}) {final _that = this;
switch (_that) {
case CartEventInit() when init != null:
return init();case CartEventCreateItem() when createItem != null:
return createItem(_that.name);case CartEventReorder() when reorder != null:
return reorder(_that.oldIndex,_that.newIndex);case CartEventToggle() when toggle != null:
return toggle(_that.item);case CartEventDelete() when delete != null:
return delete(_that.item);case _:
  return null;

}
}

}

/// @nodoc


class CartEventInit implements CartEvent {
  const CartEventInit();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CartEventInit);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CartEvent.init()';
}


}




/// @nodoc


class CartEventCreateItem implements CartEvent {
  const CartEventCreateItem(this.name);
  

 final  String name;

/// Create a copy of CartEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CartEventCreateItemCopyWith<CartEventCreateItem> get copyWith => _$CartEventCreateItemCopyWithImpl<CartEventCreateItem>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CartEventCreateItem&&(identical(other.name, name) || other.name == name));
}


@override
int get hashCode => Object.hash(runtimeType,name);

@override
String toString() {
  return 'CartEvent.createItem(name: $name)';
}


}

/// @nodoc
abstract mixin class $CartEventCreateItemCopyWith<$Res> implements $CartEventCopyWith<$Res> {
  factory $CartEventCreateItemCopyWith(CartEventCreateItem value, $Res Function(CartEventCreateItem) _then) = _$CartEventCreateItemCopyWithImpl;
@useResult
$Res call({
 String name
});




}
/// @nodoc
class _$CartEventCreateItemCopyWithImpl<$Res>
    implements $CartEventCreateItemCopyWith<$Res> {
  _$CartEventCreateItemCopyWithImpl(this._self, this._then);

  final CartEventCreateItem _self;
  final $Res Function(CartEventCreateItem) _then;

/// Create a copy of CartEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? name = null,}) {
  return _then(CartEventCreateItem(
null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class CartEventReorder implements CartEvent {
  const CartEventReorder(this.oldIndex, this.newIndex);
  

 final  int oldIndex;
 final  int newIndex;

/// Create a copy of CartEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CartEventReorderCopyWith<CartEventReorder> get copyWith => _$CartEventReorderCopyWithImpl<CartEventReorder>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CartEventReorder&&(identical(other.oldIndex, oldIndex) || other.oldIndex == oldIndex)&&(identical(other.newIndex, newIndex) || other.newIndex == newIndex));
}


@override
int get hashCode => Object.hash(runtimeType,oldIndex,newIndex);

@override
String toString() {
  return 'CartEvent.reorder(oldIndex: $oldIndex, newIndex: $newIndex)';
}


}

/// @nodoc
abstract mixin class $CartEventReorderCopyWith<$Res> implements $CartEventCopyWith<$Res> {
  factory $CartEventReorderCopyWith(CartEventReorder value, $Res Function(CartEventReorder) _then) = _$CartEventReorderCopyWithImpl;
@useResult
$Res call({
 int oldIndex, int newIndex
});




}
/// @nodoc
class _$CartEventReorderCopyWithImpl<$Res>
    implements $CartEventReorderCopyWith<$Res> {
  _$CartEventReorderCopyWithImpl(this._self, this._then);

  final CartEventReorder _self;
  final $Res Function(CartEventReorder) _then;

/// Create a copy of CartEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? oldIndex = null,Object? newIndex = null,}) {
  return _then(CartEventReorder(
null == oldIndex ? _self.oldIndex : oldIndex // ignore: cast_nullable_to_non_nullable
as int,null == newIndex ? _self.newIndex : newIndex // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class CartEventToggle implements CartEvent {
  const CartEventToggle(this.item);
  

 final  CartItem item;

/// Create a copy of CartEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CartEventToggleCopyWith<CartEventToggle> get copyWith => _$CartEventToggleCopyWithImpl<CartEventToggle>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CartEventToggle&&(identical(other.item, item) || other.item == item));
}


@override
int get hashCode => Object.hash(runtimeType,item);

@override
String toString() {
  return 'CartEvent.toggle(item: $item)';
}


}

/// @nodoc
abstract mixin class $CartEventToggleCopyWith<$Res> implements $CartEventCopyWith<$Res> {
  factory $CartEventToggleCopyWith(CartEventToggle value, $Res Function(CartEventToggle) _then) = _$CartEventToggleCopyWithImpl;
@useResult
$Res call({
 CartItem item
});


$CartItemCopyWith<$Res> get item;

}
/// @nodoc
class _$CartEventToggleCopyWithImpl<$Res>
    implements $CartEventToggleCopyWith<$Res> {
  _$CartEventToggleCopyWithImpl(this._self, this._then);

  final CartEventToggle _self;
  final $Res Function(CartEventToggle) _then;

/// Create a copy of CartEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? item = null,}) {
  return _then(CartEventToggle(
null == item ? _self.item : item // ignore: cast_nullable_to_non_nullable
as CartItem,
  ));
}

/// Create a copy of CartEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CartItemCopyWith<$Res> get item {
  
  return $CartItemCopyWith<$Res>(_self.item, (value) {
    return _then(_self.copyWith(item: value));
  });
}
}

/// @nodoc


class CartEventDelete implements CartEvent {
  const CartEventDelete(this.item);
  

 final  CartItem item;

/// Create a copy of CartEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CartEventDeleteCopyWith<CartEventDelete> get copyWith => _$CartEventDeleteCopyWithImpl<CartEventDelete>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CartEventDelete&&(identical(other.item, item) || other.item == item));
}


@override
int get hashCode => Object.hash(runtimeType,item);

@override
String toString() {
  return 'CartEvent.delete(item: $item)';
}


}

/// @nodoc
abstract mixin class $CartEventDeleteCopyWith<$Res> implements $CartEventCopyWith<$Res> {
  factory $CartEventDeleteCopyWith(CartEventDelete value, $Res Function(CartEventDelete) _then) = _$CartEventDeleteCopyWithImpl;
@useResult
$Res call({
 CartItem item
});


$CartItemCopyWith<$Res> get item;

}
/// @nodoc
class _$CartEventDeleteCopyWithImpl<$Res>
    implements $CartEventDeleteCopyWith<$Res> {
  _$CartEventDeleteCopyWithImpl(this._self, this._then);

  final CartEventDelete _self;
  final $Res Function(CartEventDelete) _then;

/// Create a copy of CartEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? item = null,}) {
  return _then(CartEventDelete(
null == item ? _self.item : item // ignore: cast_nullable_to_non_nullable
as CartItem,
  ));
}

/// Create a copy of CartEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CartItemCopyWith<$Res> get item {
  
  return $CartItemCopyWith<$Res>(_self.item, (value) {
    return _then(_self.copyWith(item: value));
  });
}
}

/// @nodoc
mixin _$CartState {

 Cart? get data; bool get loading; List<String> get suggestions;
/// Create a copy of CartState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CartStateCopyWith<CartState> get copyWith => _$CartStateCopyWithImpl<CartState>(this as CartState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CartState&&(identical(other.data, data) || other.data == data)&&(identical(other.loading, loading) || other.loading == loading)&&const DeepCollectionEquality().equals(other.suggestions, suggestions));
}


@override
int get hashCode => Object.hash(runtimeType,data,loading,const DeepCollectionEquality().hash(suggestions));

@override
String toString() {
  return 'CartState(data: $data, loading: $loading, suggestions: $suggestions)';
}


}

/// @nodoc
abstract mixin class $CartStateCopyWith<$Res>  {
  factory $CartStateCopyWith(CartState value, $Res Function(CartState) _then) = _$CartStateCopyWithImpl;
@useResult
$Res call({
 Cart? data, bool loading, List<String> suggestions
});


$CartCopyWith<$Res>? get data;

}
/// @nodoc
class _$CartStateCopyWithImpl<$Res>
    implements $CartStateCopyWith<$Res> {
  _$CartStateCopyWithImpl(this._self, this._then);

  final CartState _self;
  final $Res Function(CartState) _then;

/// Create a copy of CartState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = freezed,Object? loading = null,Object? suggestions = null,}) {
  return _then(_self.copyWith(
data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as Cart?,loading: null == loading ? _self.loading : loading // ignore: cast_nullable_to_non_nullable
as bool,suggestions: null == suggestions ? _self.suggestions : suggestions // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}
/// Create a copy of CartState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CartCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $CartCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [CartState].
extension CartStatePatterns on CartState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CartState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CartState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CartState value)  $default,){
final _that = this;
switch (_that) {
case _CartState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CartState value)?  $default,){
final _that = this;
switch (_that) {
case _CartState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Cart? data,  bool loading,  List<String> suggestions)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CartState() when $default != null:
return $default(_that.data,_that.loading,_that.suggestions);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Cart? data,  bool loading,  List<String> suggestions)  $default,) {final _that = this;
switch (_that) {
case _CartState():
return $default(_that.data,_that.loading,_that.suggestions);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Cart? data,  bool loading,  List<String> suggestions)?  $default,) {final _that = this;
switch (_that) {
case _CartState() when $default != null:
return $default(_that.data,_that.loading,_that.suggestions);case _:
  return null;

}
}

}

/// @nodoc


class _CartState implements CartState {
  const _CartState({this.data = null, this.loading = false, final  List<String> suggestions = const <String>[]}): _suggestions = suggestions;
  

@override@JsonKey() final  Cart? data;
@override@JsonKey() final  bool loading;
 final  List<String> _suggestions;
@override@JsonKey() List<String> get suggestions {
  if (_suggestions is EqualUnmodifiableListView) return _suggestions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_suggestions);
}


/// Create a copy of CartState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CartStateCopyWith<_CartState> get copyWith => __$CartStateCopyWithImpl<_CartState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CartState&&(identical(other.data, data) || other.data == data)&&(identical(other.loading, loading) || other.loading == loading)&&const DeepCollectionEquality().equals(other._suggestions, _suggestions));
}


@override
int get hashCode => Object.hash(runtimeType,data,loading,const DeepCollectionEquality().hash(_suggestions));

@override
String toString() {
  return 'CartState(data: $data, loading: $loading, suggestions: $suggestions)';
}


}

/// @nodoc
abstract mixin class _$CartStateCopyWith<$Res> implements $CartStateCopyWith<$Res> {
  factory _$CartStateCopyWith(_CartState value, $Res Function(_CartState) _then) = __$CartStateCopyWithImpl;
@override @useResult
$Res call({
 Cart? data, bool loading, List<String> suggestions
});


@override $CartCopyWith<$Res>? get data;

}
/// @nodoc
class __$CartStateCopyWithImpl<$Res>
    implements _$CartStateCopyWith<$Res> {
  __$CartStateCopyWithImpl(this._self, this._then);

  final _CartState _self;
  final $Res Function(_CartState) _then;

/// Create a copy of CartState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = freezed,Object? loading = null,Object? suggestions = null,}) {
  return _then(_CartState(
data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as Cart?,loading: null == loading ? _self.loading : loading // ignore: cast_nullable_to_non_nullable
as bool,suggestions: null == suggestions ? _self._suggestions : suggestions // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

/// Create a copy of CartState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CartCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $CartCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

// dart format on
