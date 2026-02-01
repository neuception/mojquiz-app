// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quiz_engine.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$quizControllerHash() => r'4a513a5c9904d97dd2ffeaab3701225cced40995';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$QuizController
    extends BuildlessAutoDisposeNotifier<AsyncValue<List<Question>>> {
  late final String quizId;

  AsyncValue<List<Question>> build(
    String quizId,
  );
}

/// See also [QuizController].
@ProviderFor(QuizController)
const quizControllerProvider = QuizControllerFamily();

/// See also [QuizController].
class QuizControllerFamily extends Family<AsyncValue<List<Question>>> {
  /// See also [QuizController].
  const QuizControllerFamily();

  /// See also [QuizController].
  QuizControllerProvider call(
    String quizId,
  ) {
    return QuizControllerProvider(
      quizId,
    );
  }

  @override
  QuizControllerProvider getProviderOverride(
    covariant QuizControllerProvider provider,
  ) {
    return call(
      provider.quizId,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'quizControllerProvider';
}

/// See also [QuizController].
class QuizControllerProvider extends AutoDisposeNotifierProviderImpl<
    QuizController, AsyncValue<List<Question>>> {
  /// See also [QuizController].
  QuizControllerProvider(
    String quizId,
  ) : this._internal(
          () => QuizController()..quizId = quizId,
          from: quizControllerProvider,
          name: r'quizControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$quizControllerHash,
          dependencies: QuizControllerFamily._dependencies,
          allTransitiveDependencies:
              QuizControllerFamily._allTransitiveDependencies,
          quizId: quizId,
        );

  QuizControllerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.quizId,
  }) : super.internal();

  final String quizId;

  @override
  AsyncValue<List<Question>> runNotifierBuild(
    covariant QuizController notifier,
  ) {
    return notifier.build(
      quizId,
    );
  }

  @override
  Override overrideWith(QuizController Function() create) {
    return ProviderOverride(
      origin: this,
      override: QuizControllerProvider._internal(
        () => create()..quizId = quizId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        quizId: quizId,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<QuizController, AsyncValue<List<Question>>>
      createElement() {
    return _QuizControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is QuizControllerProvider && other.quizId == quizId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, quizId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin QuizControllerRef
    on AutoDisposeNotifierProviderRef<AsyncValue<List<Question>>> {
  /// The parameter `quizId` of this provider.
  String get quizId;
}

class _QuizControllerProviderElement extends AutoDisposeNotifierProviderElement<
    QuizController, AsyncValue<List<Question>>> with QuizControllerRef {
  _QuizControllerProviderElement(super.provider);

  @override
  String get quizId => (origin as QuizControllerProvider).quizId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
