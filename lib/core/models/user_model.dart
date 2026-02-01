import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserProfile with _$UserProfile {
  const factory UserProfile({
    required String uid,
    required String displayName,
    String? photoUrl,
    @Default(0) int xp,
    @Default(1) int level,
    @Default(0) int coins,
    @Default(0) int streak,
    DateTime? lastPlayed,
    @Default([]) List<String> badges,
  }) = _UserProfile;

  factory UserProfile.fromJson(Map<String, dynamic> json) => _$UserProfileFromJson(json);
}
