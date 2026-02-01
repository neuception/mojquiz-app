import 'dart:math';

class GamificationLogic {
  // Base XP for a correct answer
  static const int baseXPPerAnswer = 10;
  
  // Level threshold calculation: Level 1 = 0 XP, Level 2 = 100 XP, Level 3 = 250 XP, etc.
  // Formula: XP = 50 * (level^2) - 50 * level
  static int getXPForLevel(int level) {
    if (level <= 1) return 0;
    return (50 * pow(level - 1, 2) + 50 * (level - 1)).toInt();
  }

  static int getLevelForXP(int xp) {
    int level = 1;
    while (getXPForLevel(level + 1) <= xp) {
      level++;
    }
    return level;
  }

  static double getLevelProgress(int xp) {
    int currentLevel = getLevelForXP(xp);
    int currentLevelXP = getXPForLevel(currentLevel);
    int nextLevelXP = getXPForLevel(currentLevel + 1);
    
    return (xp - currentLevelXP) / (nextLevelXP - currentLevelXP);
  }

  // Streak logic
  static bool shouldResetStreak(DateTime lastPlayed) {
    final now = DateTime.now();
    final difference = now.difference(lastPlayed).inHours;
    return difference > 48; // Reset if more than 48 hours passed since last play
  }

  static bool isNewDay(DateTime lastPlayed) {
    final now = DateTime.now();
    return now.day != lastPlayed.day || now.month != lastPlayed.month || now.year != lastPlayed.year;
  }
}
