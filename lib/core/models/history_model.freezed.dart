// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'history_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

QuizHistory _$QuizHistoryFromJson(Map<String, dynamic> json) {
  return _QuizHistory.fromJson(json);
}

/// @nodoc
mixin _$QuizHistory {
  String get id => throw _privateConstructorUsedError;
  String get uid => throw _privateConstructorUsedError;
  String get quizId => throw _privateConstructorUsedError;
  int get score => throw _privateConstructorUsedError;
  DateTime get attemptedAt => throw _privateConstructorUsedError;

  /// Serializes this QuizHistory to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of QuizHistory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QuizHistoryCopyWith<QuizHistory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuizHistoryCopyWith<$Res> {
  factory $QuizHistoryCopyWith(
          QuizHistory value, $Res Function(QuizHistory) then) =
      _$QuizHistoryCopyWithImpl<$Res, QuizHistory>;
  @useResult
  $Res call(
      {String id, String uid, String quizId, int score, DateTime attemptedAt});
}

/// @nodoc
class _$QuizHistoryCopyWithImpl<$Res, $Val extends QuizHistory>
    implements $QuizHistoryCopyWith<$Res> {
  _$QuizHistoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QuizHistory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? uid = null,
    Object? quizId = null,
    Object? score = null,
    Object? attemptedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      quizId: null == quizId
          ? _value.quizId
          : quizId // ignore: cast_nullable_to_non_nullable
              as String,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
      attemptedAt: null == attemptedAt
          ? _value.attemptedAt
          : attemptedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuizHistoryImplCopyWith<$Res>
    implements $QuizHistoryCopyWith<$Res> {
  factory _$$QuizHistoryImplCopyWith(
          _$QuizHistoryImpl value, $Res Function(_$QuizHistoryImpl) then) =
      __$$QuizHistoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id, String uid, String quizId, int score, DateTime attemptedAt});
}

/// @nodoc
class __$$QuizHistoryImplCopyWithImpl<$Res>
    extends _$QuizHistoryCopyWithImpl<$Res, _$QuizHistoryImpl>
    implements _$$QuizHistoryImplCopyWith<$Res> {
  __$$QuizHistoryImplCopyWithImpl(
      _$QuizHistoryImpl _value, $Res Function(_$QuizHistoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuizHistory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? uid = null,
    Object? quizId = null,
    Object? score = null,
    Object? attemptedAt = null,
  }) {
    return _then(_$QuizHistoryImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      quizId: null == quizId
          ? _value.quizId
          : quizId // ignore: cast_nullable_to_non_nullable
              as String,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
      attemptedAt: null == attemptedAt
          ? _value.attemptedAt
          : attemptedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuizHistoryImpl implements _QuizHistory {
  const _$QuizHistoryImpl(
      {required this.id,
      required this.uid,
      required this.quizId,
      required this.score,
      required this.attemptedAt});

  factory _$QuizHistoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuizHistoryImplFromJson(json);

  @override
  final String id;
  @override
  final String uid;
  @override
  final String quizId;
  @override
  final int score;
  @override
  final DateTime attemptedAt;

  @override
  String toString() {
    return 'QuizHistory(id: $id, uid: $uid, quizId: $quizId, score: $score, attemptedAt: $attemptedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuizHistoryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.quizId, quizId) || other.quizId == quizId) &&
            (identical(other.score, score) || other.score == score) &&
            (identical(other.attemptedAt, attemptedAt) ||
                other.attemptedAt == attemptedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, uid, quizId, score, attemptedAt);

  /// Create a copy of QuizHistory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QuizHistoryImplCopyWith<_$QuizHistoryImpl> get copyWith =>
      __$$QuizHistoryImplCopyWithImpl<_$QuizHistoryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuizHistoryImplToJson(
      this,
    );
  }
}

abstract class _QuizHistory implements QuizHistory {
  const factory _QuizHistory(
      {required final String id,
      required final String uid,
      required final String quizId,
      required final int score,
      required final DateTime attemptedAt}) = _$QuizHistoryImpl;

  factory _QuizHistory.fromJson(Map<String, dynamic> json) =
      _$QuizHistoryImpl.fromJson;

  @override
  String get id;
  @override
  String get uid;
  @override
  String get quizId;
  @override
  int get score;
  @override
  DateTime get attemptedAt;

  /// Create a copy of QuizHistory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QuizHistoryImplCopyWith<_$QuizHistoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

QuestionHistory _$QuestionHistoryFromJson(Map<String, dynamic> json) {
  return _QuestionHistory.fromJson(json);
}

/// @nodoc
mixin _$QuestionHistory {
  String get id => throw _privateConstructorUsedError;
  String get uid => throw _privateConstructorUsedError;
  String get questionHash => throw _privateConstructorUsedError;
  DateTime get lastAnsweredAt => throw _privateConstructorUsedError;

  /// Serializes this QuestionHistory to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of QuestionHistory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QuestionHistoryCopyWith<QuestionHistory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionHistoryCopyWith<$Res> {
  factory $QuestionHistoryCopyWith(
          QuestionHistory value, $Res Function(QuestionHistory) then) =
      _$QuestionHistoryCopyWithImpl<$Res, QuestionHistory>;
  @useResult
  $Res call(
      {String id, String uid, String questionHash, DateTime lastAnsweredAt});
}

/// @nodoc
class _$QuestionHistoryCopyWithImpl<$Res, $Val extends QuestionHistory>
    implements $QuestionHistoryCopyWith<$Res> {
  _$QuestionHistoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QuestionHistory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? uid = null,
    Object? questionHash = null,
    Object? lastAnsweredAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      questionHash: null == questionHash
          ? _value.questionHash
          : questionHash // ignore: cast_nullable_to_non_nullable
              as String,
      lastAnsweredAt: null == lastAnsweredAt
          ? _value.lastAnsweredAt
          : lastAnsweredAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuestionHistoryImplCopyWith<$Res>
    implements $QuestionHistoryCopyWith<$Res> {
  factory _$$QuestionHistoryImplCopyWith(_$QuestionHistoryImpl value,
          $Res Function(_$QuestionHistoryImpl) then) =
      __$$QuestionHistoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id, String uid, String questionHash, DateTime lastAnsweredAt});
}

/// @nodoc
class __$$QuestionHistoryImplCopyWithImpl<$Res>
    extends _$QuestionHistoryCopyWithImpl<$Res, _$QuestionHistoryImpl>
    implements _$$QuestionHistoryImplCopyWith<$Res> {
  __$$QuestionHistoryImplCopyWithImpl(
      _$QuestionHistoryImpl _value, $Res Function(_$QuestionHistoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuestionHistory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? uid = null,
    Object? questionHash = null,
    Object? lastAnsweredAt = null,
  }) {
    return _then(_$QuestionHistoryImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      questionHash: null == questionHash
          ? _value.questionHash
          : questionHash // ignore: cast_nullable_to_non_nullable
              as String,
      lastAnsweredAt: null == lastAnsweredAt
          ? _value.lastAnsweredAt
          : lastAnsweredAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuestionHistoryImpl implements _QuestionHistory {
  const _$QuestionHistoryImpl(
      {required this.id,
      required this.uid,
      required this.questionHash,
      required this.lastAnsweredAt});

  factory _$QuestionHistoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuestionHistoryImplFromJson(json);

  @override
  final String id;
  @override
  final String uid;
  @override
  final String questionHash;
  @override
  final DateTime lastAnsweredAt;

  @override
  String toString() {
    return 'QuestionHistory(id: $id, uid: $uid, questionHash: $questionHash, lastAnsweredAt: $lastAnsweredAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionHistoryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.questionHash, questionHash) ||
                other.questionHash == questionHash) &&
            (identical(other.lastAnsweredAt, lastAnsweredAt) ||
                other.lastAnsweredAt == lastAnsweredAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, uid, questionHash, lastAnsweredAt);

  /// Create a copy of QuestionHistory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QuestionHistoryImplCopyWith<_$QuestionHistoryImpl> get copyWith =>
      __$$QuestionHistoryImplCopyWithImpl<_$QuestionHistoryImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuestionHistoryImplToJson(
      this,
    );
  }
}

abstract class _QuestionHistory implements QuestionHistory {
  const factory _QuestionHistory(
      {required final String id,
      required final String uid,
      required final String questionHash,
      required final DateTime lastAnsweredAt}) = _$QuestionHistoryImpl;

  factory _QuestionHistory.fromJson(Map<String, dynamic> json) =
      _$QuestionHistoryImpl.fromJson;

  @override
  String get id;
  @override
  String get uid;
  @override
  String get questionHash;
  @override
  DateTime get lastAnsweredAt;

  /// Create a copy of QuestionHistory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QuestionHistoryImplCopyWith<_$QuestionHistoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
