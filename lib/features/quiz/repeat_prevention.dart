import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../core/models/quiz_model.dart';

part 'repeat_prevention.g.dart';

@riverpod
class RepeatPreventionEngine extends _$RepeatPreventionEngine {
  @override
  void build() {}

  // Filter out questions that the user has already seen
  List<Question> filterSeenQuestions(List<Question> questions, List<String> seenHashes) {
    return questions.where((q) => !seenHashes.contains(q.questionHash)).toList();
  }

  // Logic to re-enable old quizzes after cooldown (e.g., 30 days)
  bool isEligibleForRetry(DateTime lastAttempted) {
    final now = DateTime.now();
    final difference = now.difference(lastAttempted).inDays;
    return difference >= 30; // 30-day cooldown
  }
}
