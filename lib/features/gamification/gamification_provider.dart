import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../core/models/user_model.dart';
import '../../core/services/firestore_service.dart';
import 'gamification_logic.dart';

part 'gamification_provider.g.dart';

@riverpod
class UserProgression extends _$UserProgression {
  @override
  FutureOr<UserProfile?> build() async {
    // Fetch user profile from Firestore
    return null; 
  }

  Future<void> addXP(int amount) async {
    final user = state.value;
    if (user == null) return;

    final newXP = user.xp + amount;
    final newLevel = GamificationLogic.getLevelForXP(newXP);

    state = AsyncValue.data(user.copyWith(
      xp: newXP,
      level: newLevel,
    ));

    // Update Firestore
  }

  Future<void> updateStreak() async {
    final user = state.value;
    if (user == null) return;

    final now = DateTime.now();
    int newStreak = user.streak;

    if (user.lastPlayed != null) {
      if (GamificationLogic.shouldResetStreak(user.lastPlayed!)) {
        newStreak = 1;
      } else if (GamificationLogic.isNewDay(user.lastPlayed!)) {
        newStreak++;
      }
    } else {
      newStreak = 1;
    }

    state = AsyncValue.data(user.copyWith(
      streak: newStreak,
      lastPlayed: now,
    ));
    
    // Update Firestore
  }
}
