import 'package:freezed_annotation/freezed_annotation.dart';

part 'history_model.freezed.dart';
part 'history_model.g.dart';

@freezed
abstract class QuizHistory with _$QuizHistory {
  const factory QuizHistory({
    required String id,
    required String uid,
    required String quizId,
    required int score,
    required DateTime attemptedAt,
  }) = _QuizHistory;

  factory QuizHistory.fromJson(Map<String, dynamic> json) => _$QuizHistoryFromJson(json);
}

@freezed
abstract class QuestionHistory with _$QuestionHistory {
  const factory QuestionHistory({
    required String id,
    required String uid,
    required String questionHash,
    required DateTime lastAnsweredAt,
  }) = _QuestionHistory;

  factory QuestionHistory.fromJson(Map<String, dynamic> json) => _$QuestionHistoryFromJson(json);
}
