// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'history_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$QuizHistory {

 String get id; String get uid; String get quizId; int get score; DateTime get attemptedAt;
/// Create a copy of QuizHistory
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$QuizHistoryCopyWith<QuizHistory> get copyWith => _$QuizHistoryCopyWithImpl<QuizHistory>(this as QuizHistory, _$identity);

  /// Serializes this QuizHistory to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QuizHistory&&(identical(other.id, id) || other.id == id)&&(identical(other.uid, uid) || other.uid == uid)&&(identical(other.quizId, quizId) || other.quizId == quizId)&&(identical(other.score, score) || other.score == score)&&(identical(other.attemptedAt, attemptedAt) || other.attemptedAt == attemptedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,uid,quizId,score,attemptedAt);

@override
String toString() {
  return 'QuizHistory(id: $id, uid: $uid, quizId: $quizId, score: $score, attemptedAt: $attemptedAt)';
}


}

/// @nodoc
abstract mixin class $QuizHistoryCopyWith<$Res>  {
  factory $QuizHistoryCopyWith(QuizHistory value, $Res Function(QuizHistory) _then) = _$QuizHistoryCopyWithImpl;
@useResult
$Res call({
 String id, String uid, String quizId, int score, DateTime attemptedAt
});




}
/// @nodoc
class _$QuizHistoryCopyWithImpl<$Res>
    implements $QuizHistoryCopyWith<$Res> {
  _$QuizHistoryCopyWithImpl(this._self, this._then);

  final QuizHistory _self;
  final $Res Function(QuizHistory) _then;

/// Create a copy of QuizHistory
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? uid = null,Object? quizId = null,Object? score = null,Object? attemptedAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,uid: null == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String,quizId: null == quizId ? _self.quizId : quizId // ignore: cast_nullable_to_non_nullable
as String,score: null == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as int,attemptedAt: null == attemptedAt ? _self.attemptedAt : attemptedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [QuizHistory].
extension QuizHistoryPatterns on QuizHistory {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _QuizHistory value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _QuizHistory() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _QuizHistory value)  $default,){
final _that = this;
switch (_that) {
case _QuizHistory():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _QuizHistory value)?  $default,){
final _that = this;
switch (_that) {
case _QuizHistory() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String uid,  String quizId,  int score,  DateTime attemptedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _QuizHistory() when $default != null:
return $default(_that.id,_that.uid,_that.quizId,_that.score,_that.attemptedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String uid,  String quizId,  int score,  DateTime attemptedAt)  $default,) {final _that = this;
switch (_that) {
case _QuizHistory():
return $default(_that.id,_that.uid,_that.quizId,_that.score,_that.attemptedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String uid,  String quizId,  int score,  DateTime attemptedAt)?  $default,) {final _that = this;
switch (_that) {
case _QuizHistory() when $default != null:
return $default(_that.id,_that.uid,_that.quizId,_that.score,_that.attemptedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _QuizHistory implements QuizHistory {
  const _QuizHistory({required this.id, required this.uid, required this.quizId, required this.score, required this.attemptedAt});
  factory _QuizHistory.fromJson(Map<String, dynamic> json) => _$QuizHistoryFromJson(json);

@override final  String id;
@override final  String uid;
@override final  String quizId;
@override final  int score;
@override final  DateTime attemptedAt;

/// Create a copy of QuizHistory
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$QuizHistoryCopyWith<_QuizHistory> get copyWith => __$QuizHistoryCopyWithImpl<_QuizHistory>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$QuizHistoryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _QuizHistory&&(identical(other.id, id) || other.id == id)&&(identical(other.uid, uid) || other.uid == uid)&&(identical(other.quizId, quizId) || other.quizId == quizId)&&(identical(other.score, score) || other.score == score)&&(identical(other.attemptedAt, attemptedAt) || other.attemptedAt == attemptedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,uid,quizId,score,attemptedAt);

@override
String toString() {
  return 'QuizHistory(id: $id, uid: $uid, quizId: $quizId, score: $score, attemptedAt: $attemptedAt)';
}


}

/// @nodoc
abstract mixin class _$QuizHistoryCopyWith<$Res> implements $QuizHistoryCopyWith<$Res> {
  factory _$QuizHistoryCopyWith(_QuizHistory value, $Res Function(_QuizHistory) _then) = __$QuizHistoryCopyWithImpl;
@override @useResult
$Res call({
 String id, String uid, String quizId, int score, DateTime attemptedAt
});




}
/// @nodoc
class __$QuizHistoryCopyWithImpl<$Res>
    implements _$QuizHistoryCopyWith<$Res> {
  __$QuizHistoryCopyWithImpl(this._self, this._then);

  final _QuizHistory _self;
  final $Res Function(_QuizHistory) _then;

/// Create a copy of QuizHistory
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? uid = null,Object? quizId = null,Object? score = null,Object? attemptedAt = null,}) {
  return _then(_QuizHistory(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,uid: null == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String,quizId: null == quizId ? _self.quizId : quizId // ignore: cast_nullable_to_non_nullable
as String,score: null == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as int,attemptedAt: null == attemptedAt ? _self.attemptedAt : attemptedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}


/// @nodoc
mixin _$QuestionHistory {

 String get id; String get uid; String get questionHash; DateTime get lastAnsweredAt;
/// Create a copy of QuestionHistory
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$QuestionHistoryCopyWith<QuestionHistory> get copyWith => _$QuestionHistoryCopyWithImpl<QuestionHistory>(this as QuestionHistory, _$identity);

  /// Serializes this QuestionHistory to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QuestionHistory&&(identical(other.id, id) || other.id == id)&&(identical(other.uid, uid) || other.uid == uid)&&(identical(other.questionHash, questionHash) || other.questionHash == questionHash)&&(identical(other.lastAnsweredAt, lastAnsweredAt) || other.lastAnsweredAt == lastAnsweredAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,uid,questionHash,lastAnsweredAt);

@override
String toString() {
  return 'QuestionHistory(id: $id, uid: $uid, questionHash: $questionHash, lastAnsweredAt: $lastAnsweredAt)';
}


}

/// @nodoc
abstract mixin class $QuestionHistoryCopyWith<$Res>  {
  factory $QuestionHistoryCopyWith(QuestionHistory value, $Res Function(QuestionHistory) _then) = _$QuestionHistoryCopyWithImpl;
@useResult
$Res call({
 String id, String uid, String questionHash, DateTime lastAnsweredAt
});




}
/// @nodoc
class _$QuestionHistoryCopyWithImpl<$Res>
    implements $QuestionHistoryCopyWith<$Res> {
  _$QuestionHistoryCopyWithImpl(this._self, this._then);

  final QuestionHistory _self;
  final $Res Function(QuestionHistory) _then;

/// Create a copy of QuestionHistory
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? uid = null,Object? questionHash = null,Object? lastAnsweredAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,uid: null == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String,questionHash: null == questionHash ? _self.questionHash : questionHash // ignore: cast_nullable_to_non_nullable
as String,lastAnsweredAt: null == lastAnsweredAt ? _self.lastAnsweredAt : lastAnsweredAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [QuestionHistory].
extension QuestionHistoryPatterns on QuestionHistory {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _QuestionHistory value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _QuestionHistory() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _QuestionHistory value)  $default,){
final _that = this;
switch (_that) {
case _QuestionHistory():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _QuestionHistory value)?  $default,){
final _that = this;
switch (_that) {
case _QuestionHistory() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String uid,  String questionHash,  DateTime lastAnsweredAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _QuestionHistory() when $default != null:
return $default(_that.id,_that.uid,_that.questionHash,_that.lastAnsweredAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String uid,  String questionHash,  DateTime lastAnsweredAt)  $default,) {final _that = this;
switch (_that) {
case _QuestionHistory():
return $default(_that.id,_that.uid,_that.questionHash,_that.lastAnsweredAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String uid,  String questionHash,  DateTime lastAnsweredAt)?  $default,) {final _that = this;
switch (_that) {
case _QuestionHistory() when $default != null:
return $default(_that.id,_that.uid,_that.questionHash,_that.lastAnsweredAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _QuestionHistory implements QuestionHistory {
  const _QuestionHistory({required this.id, required this.uid, required this.questionHash, required this.lastAnsweredAt});
  factory _QuestionHistory.fromJson(Map<String, dynamic> json) => _$QuestionHistoryFromJson(json);

@override final  String id;
@override final  String uid;
@override final  String questionHash;
@override final  DateTime lastAnsweredAt;

/// Create a copy of QuestionHistory
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$QuestionHistoryCopyWith<_QuestionHistory> get copyWith => __$QuestionHistoryCopyWithImpl<_QuestionHistory>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$QuestionHistoryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _QuestionHistory&&(identical(other.id, id) || other.id == id)&&(identical(other.uid, uid) || other.uid == uid)&&(identical(other.questionHash, questionHash) || other.questionHash == questionHash)&&(identical(other.lastAnsweredAt, lastAnsweredAt) || other.lastAnsweredAt == lastAnsweredAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,uid,questionHash,lastAnsweredAt);

@override
String toString() {
  return 'QuestionHistory(id: $id, uid: $uid, questionHash: $questionHash, lastAnsweredAt: $lastAnsweredAt)';
}


}

/// @nodoc
abstract mixin class _$QuestionHistoryCopyWith<$Res> implements $QuestionHistoryCopyWith<$Res> {
  factory _$QuestionHistoryCopyWith(_QuestionHistory value, $Res Function(_QuestionHistory) _then) = __$QuestionHistoryCopyWithImpl;
@override @useResult
$Res call({
 String id, String uid, String questionHash, DateTime lastAnsweredAt
});




}
/// @nodoc
class __$QuestionHistoryCopyWithImpl<$Res>
    implements _$QuestionHistoryCopyWith<$Res> {
  __$QuestionHistoryCopyWithImpl(this._self, this._then);

  final _QuestionHistory _self;
  final $Res Function(_QuestionHistory) _then;

/// Create a copy of QuestionHistory
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? uid = null,Object? questionHash = null,Object? lastAnsweredAt = null,}) {
  return _then(_QuestionHistory(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,uid: null == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String,questionHash: null == questionHash ? _self.questionHash : questionHash // ignore: cast_nullable_to_non_nullable
as String,lastAnsweredAt: null == lastAnsweredAt ? _self.lastAnsweredAt : lastAnsweredAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
