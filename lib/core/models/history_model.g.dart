// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'history_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuizHistoryImpl _$$QuizHistoryImplFromJson(Map<String, dynamic> json) =>
    _$QuizHistoryImpl(
      id: json['id'] as String,
      uid: json['uid'] as String,
      quizId: json['quizId'] as String,
      score: (json['score'] as num).toInt(),
      attemptedAt: DateTime.parse(json['attemptedAt'] as String),
    );

Map<String, dynamic> _$$QuizHistoryImplToJson(_$QuizHistoryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'uid': instance.uid,
      'quizId': instance.quizId,
      'score': instance.score,
      'attemptedAt': instance.attemptedAt.toIso8601String(),
    };

_$QuestionHistoryImpl _$$QuestionHistoryImplFromJson(
        Map<String, dynamic> json) =>
    _$QuestionHistoryImpl(
      id: json['id'] as String,
      uid: json['uid'] as String,
      questionHash: json['questionHash'] as String,
      lastAnsweredAt: DateTime.parse(json['lastAnsweredAt'] as String),
    );

Map<String, dynamic> _$$QuestionHistoryImplToJson(
        _$QuestionHistoryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'uid': instance.uid,
      'questionHash': instance.questionHash,
      'lastAnsweredAt': instance.lastAnsweredAt.toIso8601String(),
    };
