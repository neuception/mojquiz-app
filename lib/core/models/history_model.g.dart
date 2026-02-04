// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'history_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_QuizHistory _$QuizHistoryFromJson(Map<String, dynamic> json) => _QuizHistory(
  id: json['id'] as String,
  uid: json['uid'] as String,
  quizId: json['quizId'] as String,
  score: (json['score'] as num).toInt(),
  attemptedAt: DateTime.parse(json['attemptedAt'] as String),
);

Map<String, dynamic> _$QuizHistoryToJson(_QuizHistory instance) =>
    <String, dynamic>{
      'id': instance.id,
      'uid': instance.uid,
      'quizId': instance.quizId,
      'score': instance.score,
      'attemptedAt': instance.attemptedAt.toIso8601String(),
    };

_QuestionHistory _$QuestionHistoryFromJson(Map<String, dynamic> json) =>
    _QuestionHistory(
      id: json['id'] as String,
      uid: json['uid'] as String,
      questionHash: json['questionHash'] as String,
      lastAnsweredAt: DateTime.parse(json['lastAnsweredAt'] as String),
    );

Map<String, dynamic> _$QuestionHistoryToJson(_QuestionHistory instance) =>
    <String, dynamic>{
      'id': instance.id,
      'uid': instance.uid,
      'questionHash': instance.questionHash,
      'lastAnsweredAt': instance.lastAnsweredAt.toIso8601String(),
    };
