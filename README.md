# Mojquiz

A high-performance, gamified Flutter quiz application with AI-powered content generation.

## Features
- **AI Quiz Pipeline**: Daily structured quizzes generated via LLM.
- **Repeat Prevention**: Intelligent tracking of attempted questions to ensure a fresh experience.
- **Gamification**: XP, Levels, Coins, Streaks, and Power-ups.
- **Monetization**: Rewarded Ads and Premium IAP.
- **Cross-Platform**: Optimized for Android and iOS.

## Tech Stack
- **Frontend**: Flutter, Riverpod, GoRouter.
- **Backend**: Firebase (Auth, Firestore, Functions).
- **CI/CD**: GitHub Actions.

## Getting Started
1. Clone the repo.
2. Setup Firebase project in [Firebase Console](https://console.firebase.google.com/).
3. Add `.env` file with necessary API keys.
4. Run `flutter pub get`.
5. Run `flutter run`.

## How to Test

### 1. Local Flutter Tests
Run unit and widget tests:
```bash
flutter test
```

### 2. Firebase Emulators (Recommended for Backend logic)
Test Firestore rules and Cloud Functions locally:
1. Install Firebase CLI: `npm install -g firebase-tools`
2. Login: `firebase login`
3. Start Emulators:
```bash
firebase emulators:start
```

### 3. Manual UI Testing
- **Auth**: Use the "Play as Guest" button on the Login screen.
- **Quiz**: Click "Daily Quiz" on the Dashboard.
- **Ads**: Rewarded ads are currently using **Test Unit IDs**. You will see a "Test Ad" overlay.
- **Profile**: Verify "Delete Account" and Sign Out functionality.

### 4. Integration & Security
- Check `firebase/rules/firestore.rules` for security coverage.
- Use `firebase/functions/src/index.ts` to trigger daily quiz generation via Emulator UI.
