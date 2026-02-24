// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'application_error_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ApplicationErrorEvent {

 int? get code; String? get value;
/// Create a copy of ApplicationErrorEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ApplicationErrorEventCopyWith<ApplicationErrorEvent> get copyWith => _$ApplicationErrorEventCopyWithImpl<ApplicationErrorEvent>(this as ApplicationErrorEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ApplicationErrorEvent&&(identical(other.code, code) || other.code == code)&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,code,value);

@override
String toString() {
  return 'ApplicationErrorEvent(code: $code, value: $value)';
}


}

/// @nodoc
abstract mixin class $ApplicationErrorEventCopyWith<$Res>  {
  factory $ApplicationErrorEventCopyWith(ApplicationErrorEvent value, $Res Function(ApplicationErrorEvent) _then) = _$ApplicationErrorEventCopyWithImpl;
@useResult
$Res call({
 int? code, String? value
});




}
/// @nodoc
class _$ApplicationErrorEventCopyWithImpl<$Res>
    implements $ApplicationErrorEventCopyWith<$Res> {
  _$ApplicationErrorEventCopyWithImpl(this._self, this._then);

  final ApplicationErrorEvent _self;
  final $Res Function(ApplicationErrorEvent) _then;

/// Create a copy of ApplicationErrorEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? code = freezed,Object? value = freezed,}) {
  return _then(_self.copyWith(
code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as int?,value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ApplicationErrorEvent].
extension ApplicationErrorEventPatterns on ApplicationErrorEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ApplicationErrorEventHandleError value)?  handleError,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ApplicationErrorEventHandleError() when handleError != null:
return handleError(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ApplicationErrorEventHandleError value)  handleError,}){
final _that = this;
switch (_that) {
case ApplicationErrorEventHandleError():
return handleError(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ApplicationErrorEventHandleError value)?  handleError,}){
final _that = this;
switch (_that) {
case ApplicationErrorEventHandleError() when handleError != null:
return handleError(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int? code,  String? value)?  handleError,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ApplicationErrorEventHandleError() when handleError != null:
return handleError(_that.code,_that.value);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int? code,  String? value)  handleError,}) {final _that = this;
switch (_that) {
case ApplicationErrorEventHandleError():
return handleError(_that.code,_that.value);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int? code,  String? value)?  handleError,}) {final _that = this;
switch (_that) {
case ApplicationErrorEventHandleError() when handleError != null:
return handleError(_that.code,_that.value);case _:
  return null;

}
}

}

/// @nodoc


class ApplicationErrorEventHandleError implements ApplicationErrorEvent {
  const ApplicationErrorEventHandleError({this.code, this.value});
  

@override final  int? code;
@override final  String? value;

/// Create a copy of ApplicationErrorEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ApplicationErrorEventHandleErrorCopyWith<ApplicationErrorEventHandleError> get copyWith => _$ApplicationErrorEventHandleErrorCopyWithImpl<ApplicationErrorEventHandleError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ApplicationErrorEventHandleError&&(identical(other.code, code) || other.code == code)&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,code,value);

@override
String toString() {
  return 'ApplicationErrorEvent.handleError(code: $code, value: $value)';
}


}

/// @nodoc
abstract mixin class $ApplicationErrorEventHandleErrorCopyWith<$Res> implements $ApplicationErrorEventCopyWith<$Res> {
  factory $ApplicationErrorEventHandleErrorCopyWith(ApplicationErrorEventHandleError value, $Res Function(ApplicationErrorEventHandleError) _then) = _$ApplicationErrorEventHandleErrorCopyWithImpl;
@override @useResult
$Res call({
 int? code, String? value
});




}
/// @nodoc
class _$ApplicationErrorEventHandleErrorCopyWithImpl<$Res>
    implements $ApplicationErrorEventHandleErrorCopyWith<$Res> {
  _$ApplicationErrorEventHandleErrorCopyWithImpl(this._self, this._then);

  final ApplicationErrorEventHandleError _self;
  final $Res Function(ApplicationErrorEventHandleError) _then;

/// Create a copy of ApplicationErrorEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? code = freezed,Object? value = freezed,}) {
  return _then(ApplicationErrorEventHandleError(
code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as int?,value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
mixin _$ApplicationErrorState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ApplicationErrorState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ApplicationErrorState()';
}


}

/// @nodoc
class $ApplicationErrorStateCopyWith<$Res>  {
$ApplicationErrorStateCopyWith(ApplicationErrorState _, $Res Function(ApplicationErrorState) __);
}


/// Adds pattern-matching-related methods to [ApplicationErrorState].
extension ApplicationErrorStatePatterns on ApplicationErrorState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ApplicationErrorStateCurrent value)?  initial,TResult Function( ApplicationErrorStateShow value)?  show,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ApplicationErrorStateCurrent() when initial != null:
return initial(_that);case ApplicationErrorStateShow() when show != null:
return show(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ApplicationErrorStateCurrent value)  initial,required TResult Function( ApplicationErrorStateShow value)  show,}){
final _that = this;
switch (_that) {
case ApplicationErrorStateCurrent():
return initial(_that);case ApplicationErrorStateShow():
return show(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ApplicationErrorStateCurrent value)?  initial,TResult? Function( ApplicationErrorStateShow value)?  show,}){
final _that = this;
switch (_that) {
case ApplicationErrorStateCurrent() when initial != null:
return initial(_that);case ApplicationErrorStateShow() when show != null:
return show(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function( int code,  String value)?  show,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ApplicationErrorStateCurrent() when initial != null:
return initial();case ApplicationErrorStateShow() when show != null:
return show(_that.code,_that.value);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function( int code,  String value)  show,}) {final _that = this;
switch (_that) {
case ApplicationErrorStateCurrent():
return initial();case ApplicationErrorStateShow():
return show(_that.code,_that.value);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function( int code,  String value)?  show,}) {final _that = this;
switch (_that) {
case ApplicationErrorStateCurrent() when initial != null:
return initial();case ApplicationErrorStateShow() when show != null:
return show(_that.code,_that.value);case _:
  return null;

}
}

}

/// @nodoc


class ApplicationErrorStateCurrent implements ApplicationErrorState {
  const ApplicationErrorStateCurrent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ApplicationErrorStateCurrent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ApplicationErrorState.initial()';
}


}




/// @nodoc


class ApplicationErrorStateShow implements ApplicationErrorState {
  const ApplicationErrorStateShow({required this.code, required this.value});
  

 final  int code;
 final  String value;

/// Create a copy of ApplicationErrorState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ApplicationErrorStateShowCopyWith<ApplicationErrorStateShow> get copyWith => _$ApplicationErrorStateShowCopyWithImpl<ApplicationErrorStateShow>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ApplicationErrorStateShow&&(identical(other.code, code) || other.code == code)&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,code,value);

@override
String toString() {
  return 'ApplicationErrorState.show(code: $code, value: $value)';
}


}

/// @nodoc
abstract mixin class $ApplicationErrorStateShowCopyWith<$Res> implements $ApplicationErrorStateCopyWith<$Res> {
  factory $ApplicationErrorStateShowCopyWith(ApplicationErrorStateShow value, $Res Function(ApplicationErrorStateShow) _then) = _$ApplicationErrorStateShowCopyWithImpl;
@useResult
$Res call({
 int code, String value
});




}
/// @nodoc
class _$ApplicationErrorStateShowCopyWithImpl<$Res>
    implements $ApplicationErrorStateShowCopyWith<$Res> {
  _$ApplicationErrorStateShowCopyWithImpl(this._self, this._then);

  final ApplicationErrorStateShow _self;
  final $Res Function(ApplicationErrorStateShow) _then;

/// Create a copy of ApplicationErrorState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? code = null,Object? value = null,}) {
  return _then(ApplicationErrorStateShow(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as int,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
