// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'consent_service.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ConsentService)
final consentServiceProvider = ConsentServiceProvider._();

final class ConsentServiceProvider
    extends $NotifierProvider<ConsentService, void> {
  ConsentServiceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'consentServiceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$consentServiceHash();

  @$internal
  @override
  ConsentService create() => ConsentService();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(void value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<void>(value),
    );
  }
}

String _$consentServiceHash() => r'461028646d4db0bb4041046e10ad8624f5a578e9';

abstract class _$ConsentService extends $Notifier<void> {
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
