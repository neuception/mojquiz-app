// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quiz_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuizImpl _$$QuizImplFromJson(Map<String, dynamic> json) => _$QuizImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      category: json['category'] as String,
      subcategory: json['subcategory'] as String,
      difficulty: json['difficulty'] as String,
      language: json['language'] as String,
      tags:
          (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const [],
      source: json['source'] as String,
      quizHash: json['quizHash'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      premium: json['premium'] as bool? ?? false,
    );

Map<String, dynamic> _$$QuizImplToJson(_$QuizImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'category': instance.category,
      'subcategory': instance.subcategory,
      'difficulty': instance.difficulty,
      'language': instance.language,
      'tags': instance.tags,
      'source': instance.source,
      'quizHash': instance.quizHash,
      'createdAt': instance.createdAt.toIso8601String(),
      'premium': instance.premium,
    };

_$QuestionImpl _$$QuestionImplFromJson(Map<String, dynamic> json) =>
    _$QuestionImpl(
      id: json['id'] as String,
      quizId: json['quizId'] as String,
      text: json['text'] as String,
      options:
          (json['options'] as List<dynamic>).map((e) => e as String).toList(),
      correctAnswerIndex: (json['correctAnswerIndex'] as num).toInt(),
      explanation: json['explanation'] as String,
      questionHash: json['questionHash'] as String,
    );

Map<String, dynamic> _$$QuestionImplToJson(_$QuestionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'quizId': instance.quizId,
      'text': instance.text,
      'options': instance.options,
      'correctAnswerIndex': instance.correctAnswerIndex,
      'explanation': instance.explanation,
      'questionHash': instance.questionHash,
    };
