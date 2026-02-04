// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gamification_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(UserProgression)
final userProgressionProvider = UserProgressionProvider._();

final class UserProgressionProvider
    extends $AsyncNotifierProvider<UserProgression, UserProfile?> {
  UserProgressionProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'userProgressionProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$userProgressionHash();

  @$internal
  @override
  UserProgression create() => UserProgression();
}

String _$userProgressionHash() => r'58428f295dad38944f2c26fa302df61031e4b2f0';

abstract class _$UserProgression extends $AsyncNotifier<UserProfile?> {
  FutureOr<UserProfile?> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AsyncValue<UserProfile?>, UserProfile?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<UserProfile?>, UserProfile?>,
              AsyncValue<UserProfile?>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
