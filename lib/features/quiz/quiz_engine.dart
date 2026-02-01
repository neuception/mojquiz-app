import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../core/models/quiz_model.dart';
import 'quiz_repository.dart';

part 'quiz_engine.g.dart';

@riverpod
class QuizController extends _$QuizController {
  @override
  AsyncValue<List<Question>> build(String quizId) {
    _loadQuestions(quizId);
    return const AsyncValue.loading();
  }

  Future<void> _loadQuestions(String quizId) async {
    state = await AsyncValue.guard(() async {
      return ref.read(quizRepositoryProvider.notifier).getQuestions(quizId);
    });
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
      ref.notifyListeners();
    } else {
      // Quiz finished
    }
  }
}
