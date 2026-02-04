// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repeat_prevention.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(RepeatPreventionEngine)
final repeatPreventionEngineProvider = RepeatPreventionEngineProvider._();

final class RepeatPreventionEngineProvider
    extends $NotifierProvider<RepeatPreventionEngine, void> {
  RepeatPreventionEngineProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'repeatPreventionEngineProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$repeatPreventionEngineHash();

  @$internal
  @override
  RepeatPreventionEngine create() => RepeatPreventionEngine();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(void value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<void>(value),
    );
  }
}

String _$repeatPreventionEngineHash() =>
    r'c55a9a6c7f6c837b6b23d544de18f1e0ca6e55c4';

abstract class _$RepeatPreventionEngine extends $Notifier<void> {
  void build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<void, void>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<void, void>,
              void,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
