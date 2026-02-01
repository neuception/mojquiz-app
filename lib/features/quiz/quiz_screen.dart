import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'quiz_engine.dart';
import '../../core/models/quiz_model.dart';

class QuizScreen extends ConsumerWidget {
  final String quizId;
  const QuizScreen({super.key, required this.quizId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final quizState = ref.watch(quizControllerProvider(quizId));

    return Scaffold(
      appBar: AppBar(
        title: const Text('Quiz Gameplay'),
        actions: [
          IconButton(
            icon: const Icon(Icons.flash_on),
            onPressed: () => _showPowerUps(context),
          ),
        ],
      ),
      body: quizState.when(
        data: (questions) {
          if (questions.isEmpty) return const Center(child: Text('No questions found.'));
          
          final controller = ref.read(quizControllerProvider(quizId).notifier);
          final currentQuestion = questions[controller.currentIndex];

          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                LinearProgressIndicator(
                  value: (controller.currentIndex + 1) / questions.length,
                ),
                const SizedBox(height: 24),
                Text(
                  'Question ${controller.currentIndex + 1}/${questions.length}',
                  style: Theme.of(context).textTheme.titleSmall,
                ),
                const SizedBox(height: 8),
                Text(
                  currentQuestion.text,
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const SizedBox(height: 32),
                ...List.generate(
                  currentQuestion.options.length,
                  (index) => Padding(
                    padding: const EdgeInsets.only(bottom: 12.0),
                    child: ElevatedButton(
                      onPressed: () => controller.answerQuestion(index),
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 16),
                      ),
                      child: Text(currentQuestion.options[index]),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (err, stack) => Center(child: Text('Error: $err')),
      ),
    );
  }

  void _showPowerUps(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) => Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('Power-ups', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            const SizedBox(height: 16),
            ListTile(
              leading: const Icon(Icons.remove_circle_outline),
              title: const Text('50:50'),
              onTap: () => Navigator.pop(context),
            ),
            ListTile(
              leading: const Icon(Icons.skip_next),
              title: const Text('Skip'),
              onTap: () => Navigator.pop(context),
            ),
          ],
        ),
      ),
    );
  }
}
