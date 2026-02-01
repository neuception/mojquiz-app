import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../core/models/quiz_model.dart';

part 'quiz_repository.g.dart';

@riverpod
class QuizRepository extends _$QuizRepository {
  @override
  void build() {}

  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<List<Quiz>> getQuizzes({String? category, int limit = 10}) async {
    Query query = _firestore.collection('quizzes');
    
    if (category != null) {
      query = query.where('category', isEqualTo: category);
    }

    final snapshot = await query.limit(limit).get();
    return snapshot.docs.map((doc) => Quiz.fromJson(doc.data() as Map<String, dynamic>)).toList();
  }

  Future<List<Question>> getQuestions(String quizId) async {
    final snapshot = await _firestore
        .collection('questions')
        .where('quizId', isEqualTo: quizId)
        .get();
    return snapshot.docs.map((doc) => Question.fromJson(doc.data() as Map<String, dynamic>)).toList();
  }
}
