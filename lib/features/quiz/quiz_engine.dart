import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../core/models/quiz_model.dart';
import 'quiz_repository.dart';

part 'quiz_engine.g.dart';

@riverpod
class QuizController extends _$QuizController {
  @override

  FutureOr<List<Question>> build(String quizId) async {
    return ref.watch(quizRepositoryProvider.notifier).getQuestions(quizId);
  }

  // Gameplay state management
  int _currentIndex = 0;
  int _score = 0;

  int get currentIndex => _currentIndex;
  int get score => _score;

  void answerQuestion(int selectedIndex) {
    final questions = state.value;
    if (questions == null) return;

    if (questions[_currentIndex].correctAnswerIndex == selectedIndex) {
      _score++;
    }

    if (_currentIndex < questions.length - 1) {
      _currentIndex++;
      // ref.notifyListeners(); // Not needed for Notifier
    } else {
      // Quiz finished
    }
  }
}
