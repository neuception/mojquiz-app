// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'leaderboard_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$leaderboardHash() => r'96941646a8dc397eee7cf45169fc74327f8be47f';

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

abstract class _$Leaderboard
    extends BuildlessAutoDisposeAsyncNotifier<List<UserProfile>> {
  late final String type;

  FutureOr<List<UserProfile>> build(
    String type,
  );
}

/// See also [Leaderboard].
@ProviderFor(Leaderboard)
const leaderboardProvider = LeaderboardFamily();

/// See also [Leaderboard].
class LeaderboardFamily extends Family<AsyncValue<List<UserProfile>>> {
  /// See also [Leaderboard].
  const LeaderboardFamily();

  /// See also [Leaderboard].
  LeaderboardProvider call(
    String type,
  ) {
    return LeaderboardProvider(
      type,
    );
  }

  @override
  LeaderboardProvider getProviderOverride(
    covariant LeaderboardProvider provider,
  ) {
    return call(
      provider.type,
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
  String? get name => r'leaderboardProvider';
}

/// See also [Leaderboard].
class LeaderboardProvider extends AutoDisposeAsyncNotifierProviderImpl<
    Leaderboard, List<UserProfile>> {
  /// See also [Leaderboard].
  LeaderboardProvider(
    String type,
  ) : this._internal(
          () => Leaderboard()..type = type,
          from: leaderboardProvider,
          name: r'leaderboardProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$leaderboardHash,
          dependencies: LeaderboardFamily._dependencies,
          allTransitiveDependencies:
              LeaderboardFamily._allTransitiveDependencies,
          type: type,
        );

  LeaderboardProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.type,
  }) : super.internal();

  final String type;

  @override
  FutureOr<List<UserProfile>> runNotifierBuild(
    covariant Leaderboard notifier,
  ) {
    return notifier.build(
      type,
    );
  }

  @override
  Override overrideWith(Leaderboard Function() create) {
    return ProviderOverride(
      origin: this,
      override: LeaderboardProvider._internal(
        () => create()..type = type,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        type: type,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<Leaderboard, List<UserProfile>>
      createElement() {
    return _LeaderboardProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is LeaderboardProvider && other.type == type;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, type.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin LeaderboardRef on AutoDisposeAsyncNotifierProviderRef<List<UserProfile>> {
  /// The parameter `type` of this provider.
  String get type;
}

class _LeaderboardProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<Leaderboard,
        List<UserProfile>> with LeaderboardRef {
  _LeaderboardProviderElement(super.provider);

  @override
  String get type => (origin as LeaderboardProvider).type;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
