import 'dart:io';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'consent_service.g.dart';

@riverpod
class ConsentService extends _$ConsentService {
  @override
  void build() {}

  void requestConsent() {
    final params = ConsentRequestParameters();
    
    ConsentInformation.instance.requestConsentInfoUpdate(
      params,
      () async {
        if (await ConsentInformation.instance.isConsentFormAvailable()) {
          _loadConsentForm();
        }
      },
      (error) {
        // Handle error
      },
    );
  }

  void _loadConsentForm() {
    ConsentForm.load(
      (consentForm) {
        consentForm.show((formError) {
          // Handle form error or completion
        });
      },
      (formError) {
        // Handle load error
      },
    );
  }

  Future<void> requestATT() async {
    if (Platform.isIOS) {
      // App Tracking Transparency prompt logic here
      // requires app_tracking_transparency package
    }
  }
}
