// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'leaderboard_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(Leaderboard)
final leaderboardProvider = LeaderboardFamily._();

final class LeaderboardProvider
    extends $AsyncNotifierProvider<Leaderboard, List<UserProfile>> {
  LeaderboardProvider._({
    required LeaderboardFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'leaderboardProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$leaderboardHash();

  @override
  String toString() {
    return r'leaderboardProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  Leaderboard create() => Leaderboard();

  @override
  bool operator ==(Object other) {
    return other is LeaderboardProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$leaderboardHash() => r'96941646a8dc397eee7cf45169fc74327f8be47f';

final class LeaderboardFamily extends $Family
    with
        $ClassFamilyOverride<
          Leaderboard,
          AsyncValue<List<UserProfile>>,
          List<UserProfile>,
          FutureOr<List<UserProfile>>,
          String
        > {
  LeaderboardFamily._()
    : super(
        retry: null,
        name: r'leaderboardProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  LeaderboardProvider call(String type) =>
      LeaderboardProvider._(argument: type, from: this);

  @override
  String toString() => r'leaderboardProvider';
}

abstract class _$Leaderboard extends $AsyncNotifier<List<UserProfile>> {
  late final _$args = ref.$arg as String;
  String get type => _$args;

  FutureOr<List<UserProfile>> build(String type);
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref as $Ref<AsyncValue<List<UserProfile>>, List<UserProfile>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<UserProfile>>, List<UserProfile>>,
              AsyncValue<List<UserProfile>>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, () => build(_$args));
  }
}
