// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quiz_engine.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(QuizController)
final quizControllerProvider = QuizControllerFamily._();

final class QuizControllerProvider
    extends $AsyncNotifierProvider<QuizController, List<Question>> {
  QuizControllerProvider._({
    required QuizControllerFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'quizControllerProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$quizControllerHash();

  @override
  String toString() {
    return r'quizControllerProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  QuizController create() => QuizController();

  @override
  bool operator ==(Object other) {
    return other is QuizControllerProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$quizControllerHash() => r'a6213dd83756179670cbeab7f4aec95e44517a61';

final class QuizControllerFamily extends $Family
    with
        $ClassFamilyOverride<
          QuizController,
          AsyncValue<List<Question>>,
          List<Question>,
          FutureOr<List<Question>>,
          String
        > {
  QuizControllerFamily._()
    : super(
        retry: null,
        name: r'quizControllerProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  QuizControllerProvider call(String quizId) =>
      QuizControllerProvider._(argument: quizId, from: this);

  @override
  String toString() => r'quizControllerProvider';
}

abstract class _$QuizController extends $AsyncNotifier<List<Question>> {
  late final _$args = ref.$arg as String;
  String get quizId => _$args;

  FutureOr<List<Question>> build(String quizId);
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AsyncValue<List<Question>>, List<Question>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<Question>>, List<Question>>,
              AsyncValue<List<Question>>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, () => build(_$args));
  }
}
