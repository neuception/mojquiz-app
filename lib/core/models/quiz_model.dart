import 'package:freezed_annotation/freezed_annotation.dart';

part 'quiz_model.freezed.dart';
part 'quiz_model.g.dart';

@freezed
abstract class Quiz with _$Quiz {
  const factory Quiz({
    required String id,
    required String title,
    required String category,
    required String subcategory,
    required String difficulty,
    required String language,
    @Default([]) List<String> tags,
    required String source,
    required String quizHash,
    required DateTime createdAt,
    @Default(false) bool premium,
  }) = _Quiz;

  factory Quiz.fromJson(Map<String, dynamic> json) => _$QuizFromJson(json);
}

@freezed
abstract class Question with _$Question {
  const factory Question({
    required String id,
    required String quizId,
    required String text,
    required List<String> options,
    required int correctAnswerIndex,
    required String explanation,
    required String questionHash,
  }) = _Question;

  factory Question.fromJson(Map<String, dynamic> json) => _$QuestionFromJson(json);
}
