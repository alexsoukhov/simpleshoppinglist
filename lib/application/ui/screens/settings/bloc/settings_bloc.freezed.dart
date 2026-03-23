// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'settings_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SettingsEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SettingsEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SettingsEvent()';
}


}

/// @nodoc
class $SettingsEventCopyWith<$Res>  {
$SettingsEventCopyWith(SettingsEvent _, $Res Function(SettingsEvent) __);
}


/// Adds pattern-matching-related methods to [SettingsEvent].
extension SettingsEventPatterns on SettingsEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( SettingsEventInit value)?  init,TResult Function( SettingsEventReorder value)?  reorder,TResult Function( SettingsEventDelete value)?  delete,TResult Function( SettingsEventAdd value)?  add,TResult Function( SettingsEventSwitchDate value)?  switchDate,TResult Function( SettingsEventSave value)?  save,required TResult orElse(),}){
final _that = this;
switch (_that) {
case SettingsEventInit() when init != null:
return init(_that);case SettingsEventReorder() when reorder != null:
return reorder(_that);case SettingsEventDelete() when delete != null:
return delete(_that);case SettingsEventAdd() when add != null:
return add(_that);case SettingsEventSwitchDate() when switchDate != null:
return switchDate(_that);case SettingsEventSave() when save != null:
return save(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( SettingsEventInit value)  init,required TResult Function( SettingsEventReorder value)  reorder,required TResult Function( SettingsEventDelete value)  delete,required TResult Function( SettingsEventAdd value)  add,required TResult Function( SettingsEventSwitchDate value)  switchDate,required TResult Function( SettingsEventSave value)  save,}){
final _that = this;
switch (_that) {
case SettingsEventInit():
return init(_that);case SettingsEventReorder():
return reorder(_that);case SettingsEventDelete():
return delete(_that);case SettingsEventAdd():
return add(_that);case SettingsEventSwitchDate():
return switchDate(_that);case SettingsEventSave():
return save(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( SettingsEventInit value)?  init,TResult? Function( SettingsEventReorder value)?  reorder,TResult? Function( SettingsEventDelete value)?  delete,TResult? Function( SettingsEventAdd value)?  add,TResult? Function( SettingsEventSwitchDate value)?  switchDate,TResult? Function( SettingsEventSave value)?  save,}){
final _that = this;
switch (_that) {
case SettingsEventInit() when init != null:
return init(_that);case SettingsEventReorder() when reorder != null:
return reorder(_that);case SettingsEventDelete() when delete != null:
return delete(_that);case SettingsEventAdd() when add != null:
return add(_that);case SettingsEventSwitchDate() when switchDate != null:
return switchDate(_that);case SettingsEventSave() when save != null:
return save(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  init,TResult Function( int oldIndex,  int newIndex)?  reorder,TResult Function( int idx)?  delete,TResult Function( String value)?  add,TResult Function( bool value)?  switchDate,TResult Function()?  save,required TResult orElse(),}) {final _that = this;
switch (_that) {
case SettingsEventInit() when init != null:
return init();case SettingsEventReorder() when reorder != null:
return reorder(_that.oldIndex,_that.newIndex);case SettingsEventDelete() when delete != null:
return delete(_that.idx);case SettingsEventAdd() when add != null:
return add(_that.value);case SettingsEventSwitchDate() when switchDate != null:
return switchDate(_that.value);case SettingsEventSave() when save != null:
return save();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  init,required TResult Function( int oldIndex,  int newIndex)  reorder,required TResult Function( int idx)  delete,required TResult Function( String value)  add,required TResult Function( bool value)  switchDate,required TResult Function()  save,}) {final _that = this;
switch (_that) {
case SettingsEventInit():
return init();case SettingsEventReorder():
return reorder(_that.oldIndex,_that.newIndex);case SettingsEventDelete():
return delete(_that.idx);case SettingsEventAdd():
return add(_that.value);case SettingsEventSwitchDate():
return switchDate(_that.value);case SettingsEventSave():
return save();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  init,TResult? Function( int oldIndex,  int newIndex)?  reorder,TResult? Function( int idx)?  delete,TResult? Function( String value)?  add,TResult? Function( bool value)?  switchDate,TResult? Function()?  save,}) {final _that = this;
switch (_that) {
case SettingsEventInit() when init != null:
return init();case SettingsEventReorder() when reorder != null:
return reorder(_that.oldIndex,_that.newIndex);case SettingsEventDelete() when delete != null:
return delete(_that.idx);case SettingsEventAdd() when add != null:
return add(_that.value);case SettingsEventSwitchDate() when switchDate != null:
return switchDate(_that.value);case SettingsEventSave() when save != null:
return save();case _:
  return null;

}
}

}

/// @nodoc


class SettingsEventInit implements SettingsEvent {
  const SettingsEventInit();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SettingsEventInit);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SettingsEvent.init()';
}


}




/// @nodoc


class SettingsEventReorder implements SettingsEvent {
  const SettingsEventReorder(this.oldIndex, this.newIndex);
  

 final  int oldIndex;
 final  int newIndex;

/// Create a copy of SettingsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SettingsEventReorderCopyWith<SettingsEventReorder> get copyWith => _$SettingsEventReorderCopyWithImpl<SettingsEventReorder>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SettingsEventReorder&&(identical(other.oldIndex, oldIndex) || other.oldIndex == oldIndex)&&(identical(other.newIndex, newIndex) || other.newIndex == newIndex));
}


@override
int get hashCode => Object.hash(runtimeType,oldIndex,newIndex);

@override
String toString() {
  return 'SettingsEvent.reorder(oldIndex: $oldIndex, newIndex: $newIndex)';
}


}

/// @nodoc
abstract mixin class $SettingsEventReorderCopyWith<$Res> implements $SettingsEventCopyWith<$Res> {
  factory $SettingsEventReorderCopyWith(SettingsEventReorder value, $Res Function(SettingsEventReorder) _then) = _$SettingsEventReorderCopyWithImpl;
@useResult
$Res call({
 int oldIndex, int newIndex
});




}
/// @nodoc
class _$SettingsEventReorderCopyWithImpl<$Res>
    implements $SettingsEventReorderCopyWith<$Res> {
  _$SettingsEventReorderCopyWithImpl(this._self, this._then);

  final SettingsEventReorder _self;
  final $Res Function(SettingsEventReorder) _then;

/// Create a copy of SettingsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? oldIndex = null,Object? newIndex = null,}) {
  return _then(SettingsEventReorder(
null == oldIndex ? _self.oldIndex : oldIndex // ignore: cast_nullable_to_non_nullable
as int,null == newIndex ? _self.newIndex : newIndex // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class SettingsEventDelete implements SettingsEvent {
  const SettingsEventDelete(this.idx);
  

 final  int idx;

/// Create a copy of SettingsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SettingsEventDeleteCopyWith<SettingsEventDelete> get copyWith => _$SettingsEventDeleteCopyWithImpl<SettingsEventDelete>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SettingsEventDelete&&(identical(other.idx, idx) || other.idx == idx));
}


@override
int get hashCode => Object.hash(runtimeType,idx);

@override
String toString() {
  return 'SettingsEvent.delete(idx: $idx)';
}


}

/// @nodoc
abstract mixin class $SettingsEventDeleteCopyWith<$Res> implements $SettingsEventCopyWith<$Res> {
  factory $SettingsEventDeleteCopyWith(SettingsEventDelete value, $Res Function(SettingsEventDelete) _then) = _$SettingsEventDeleteCopyWithImpl;
@useResult
$Res call({
 int idx
});




}
/// @nodoc
class _$SettingsEventDeleteCopyWithImpl<$Res>
    implements $SettingsEventDeleteCopyWith<$Res> {
  _$SettingsEventDeleteCopyWithImpl(this._self, this._then);

  final SettingsEventDelete _self;
  final $Res Function(SettingsEventDelete) _then;

/// Create a copy of SettingsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? idx = null,}) {
  return _then(SettingsEventDelete(
null == idx ? _self.idx : idx // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class SettingsEventAdd implements SettingsEvent {
  const SettingsEventAdd(this.value);
  

 final  String value;

/// Create a copy of SettingsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SettingsEventAddCopyWith<SettingsEventAdd> get copyWith => _$SettingsEventAddCopyWithImpl<SettingsEventAdd>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SettingsEventAdd&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'SettingsEvent.add(value: $value)';
}


}

/// @nodoc
abstract mixin class $SettingsEventAddCopyWith<$Res> implements $SettingsEventCopyWith<$Res> {
  factory $SettingsEventAddCopyWith(SettingsEventAdd value, $Res Function(SettingsEventAdd) _then) = _$SettingsEventAddCopyWithImpl;
@useResult
$Res call({
 String value
});




}
/// @nodoc
class _$SettingsEventAddCopyWithImpl<$Res>
    implements $SettingsEventAddCopyWith<$Res> {
  _$SettingsEventAddCopyWithImpl(this._self, this._then);

  final SettingsEventAdd _self;
  final $Res Function(SettingsEventAdd) _then;

/// Create a copy of SettingsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? value = null,}) {
  return _then(SettingsEventAdd(
null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class SettingsEventSwitchDate implements SettingsEvent {
  const SettingsEventSwitchDate(this.value);
  

 final  bool value;

/// Create a copy of SettingsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SettingsEventSwitchDateCopyWith<SettingsEventSwitchDate> get copyWith => _$SettingsEventSwitchDateCopyWithImpl<SettingsEventSwitchDate>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SettingsEventSwitchDate&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'SettingsEvent.switchDate(value: $value)';
}


}

/// @nodoc
abstract mixin class $SettingsEventSwitchDateCopyWith<$Res> implements $SettingsEventCopyWith<$Res> {
  factory $SettingsEventSwitchDateCopyWith(SettingsEventSwitchDate value, $Res Function(SettingsEventSwitchDate) _then) = _$SettingsEventSwitchDateCopyWithImpl;
@useResult
$Res call({
 bool value
});




}
/// @nodoc
class _$SettingsEventSwitchDateCopyWithImpl<$Res>
    implements $SettingsEventSwitchDateCopyWith<$Res> {
  _$SettingsEventSwitchDateCopyWithImpl(this._self, this._then);

  final SettingsEventSwitchDate _self;
  final $Res Function(SettingsEventSwitchDate) _then;

/// Create a copy of SettingsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? value = null,}) {
  return _then(SettingsEventSwitchDate(
null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class SettingsEventSave implements SettingsEvent {
  const SettingsEventSave();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SettingsEventSave);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SettingsEvent.save()';
}


}




/// @nodoc
mixin _$SettingsState {

 bool get suggestionDate; bool get loading; List<String> get suggestions; bool get isModified;
/// Create a copy of SettingsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SettingsStateCopyWith<SettingsState> get copyWith => _$SettingsStateCopyWithImpl<SettingsState>(this as SettingsState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SettingsState&&(identical(other.suggestionDate, suggestionDate) || other.suggestionDate == suggestionDate)&&(identical(other.loading, loading) || other.loading == loading)&&const DeepCollectionEquality().equals(other.suggestions, suggestions)&&(identical(other.isModified, isModified) || other.isModified == isModified));
}


@override
int get hashCode => Object.hash(runtimeType,suggestionDate,loading,const DeepCollectionEquality().hash(suggestions),isModified);

@override
String toString() {
  return 'SettingsState(suggestionDate: $suggestionDate, loading: $loading, suggestions: $suggestions, isModified: $isModified)';
}


}

/// @nodoc
abstract mixin class $SettingsStateCopyWith<$Res>  {
  factory $SettingsStateCopyWith(SettingsState value, $Res Function(SettingsState) _then) = _$SettingsStateCopyWithImpl;
@useResult
$Res call({
 bool suggestionDate, bool loading, List<String> suggestions, bool isModified
});




}
/// @nodoc
class _$SettingsStateCopyWithImpl<$Res>
    implements $SettingsStateCopyWith<$Res> {
  _$SettingsStateCopyWithImpl(this._self, this._then);

  final SettingsState _self;
  final $Res Function(SettingsState) _then;

/// Create a copy of SettingsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? suggestionDate = null,Object? loading = null,Object? suggestions = null,Object? isModified = null,}) {
  return _then(_self.copyWith(
suggestionDate: null == suggestionDate ? _self.suggestionDate : suggestionDate // ignore: cast_nullable_to_non_nullable
as bool,loading: null == loading ? _self.loading : loading // ignore: cast_nullable_to_non_nullable
as bool,suggestions: null == suggestions ? _self.suggestions : suggestions // ignore: cast_nullable_to_non_nullable
as List<String>,isModified: null == isModified ? _self.isModified : isModified // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [SettingsState].
extension SettingsStatePatterns on SettingsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SettingsState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SettingsState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SettingsState value)  $default,){
final _that = this;
switch (_that) {
case _SettingsState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SettingsState value)?  $default,){
final _that = this;
switch (_that) {
case _SettingsState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool suggestionDate,  bool loading,  List<String> suggestions,  bool isModified)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SettingsState() when $default != null:
return $default(_that.suggestionDate,_that.loading,_that.suggestions,_that.isModified);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool suggestionDate,  bool loading,  List<String> suggestions,  bool isModified)  $default,) {final _that = this;
switch (_that) {
case _SettingsState():
return $default(_that.suggestionDate,_that.loading,_that.suggestions,_that.isModified);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool suggestionDate,  bool loading,  List<String> suggestions,  bool isModified)?  $default,) {final _that = this;
switch (_that) {
case _SettingsState() when $default != null:
return $default(_that.suggestionDate,_that.loading,_that.suggestions,_that.isModified);case _:
  return null;

}
}

}

/// @nodoc


class _SettingsState implements SettingsState {
  const _SettingsState({this.suggestionDate = false, this.loading = false, final  List<String> suggestions = const <String>[], this.isModified = false}): _suggestions = suggestions;
  

@override@JsonKey() final  bool suggestionDate;
@override@JsonKey() final  bool loading;
 final  List<String> _suggestions;
@override@JsonKey() List<String> get suggestions {
  if (_suggestions is EqualUnmodifiableListView) return _suggestions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_suggestions);
}

@override@JsonKey() final  bool isModified;

/// Create a copy of SettingsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SettingsStateCopyWith<_SettingsState> get copyWith => __$SettingsStateCopyWithImpl<_SettingsState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SettingsState&&(identical(other.suggestionDate, suggestionDate) || other.suggestionDate == suggestionDate)&&(identical(other.loading, loading) || other.loading == loading)&&const DeepCollectionEquality().equals(other._suggestions, _suggestions)&&(identical(other.isModified, isModified) || other.isModified == isModified));
}


@override
int get hashCode => Object.hash(runtimeType,suggestionDate,loading,const DeepCollectionEquality().hash(_suggestions),isModified);

@override
String toString() {
  return 'SettingsState(suggestionDate: $suggestionDate, loading: $loading, suggestions: $suggestions, isModified: $isModified)';
}


}

/// @nodoc
abstract mixin class _$SettingsStateCopyWith<$Res> implements $SettingsStateCopyWith<$Res> {
  factory _$SettingsStateCopyWith(_SettingsState value, $Res Function(_SettingsState) _then) = __$SettingsStateCopyWithImpl;
@override @useResult
$Res call({
 bool suggestionDate, bool loading, List<String> suggestions, bool isModified
});




}
/// @nodoc
class __$SettingsStateCopyWithImpl<$Res>
    implements _$SettingsStateCopyWith<$Res> {
  __$SettingsStateCopyWithImpl(this._self, this._then);

  final _SettingsState _self;
  final $Res Function(_SettingsState) _then;

/// Create a copy of SettingsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? suggestionDate = null,Object? loading = null,Object? suggestions = null,Object? isModified = null,}) {
  return _then(_SettingsState(
suggestionDate: null == suggestionDate ? _self.suggestionDate : suggestionDate // ignore: cast_nullable_to_non_nullable
as bool,loading: null == loading ? _self.loading : loading // ignore: cast_nullable_to_non_nullable
as bool,suggestions: null == suggestions ? _self._suggestions : suggestions // ignore: cast_nullable_to_non_nullable
as List<String>,isModified: null == isModified ? _self.isModified : isModified // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
