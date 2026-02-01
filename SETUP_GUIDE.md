# Mojquiz Setup Guide (Step-by-Step)

Follow these steps to complete the configuration and get your app ready for production.

---

### Phase 0: GitHub Integration
1.  **Initialize Git**: Open your terminal in the root directory and run:
    ```bash
    git init
    ```
2.  **Add Files**:
    ```bash
    git add .
    ```
    *(Note: Your `.env` and other sensitive files are automatically excluded by the `.gitignore` I created).*
3.  **Commit**:
    ```bash
    git commit -m "Initial commit: Mojquiz production-ready structure"
    ```
4.  **Create Repository**: Go to [GitHub](https://github.com/new) and create a new repository called `mojquiz`.
5.  **Link Remote**: Copy the remote URL (e.g., `https://github.com/your-user/mojquiz.git`) and run:
    ```bash
    git branch -M main
    git remote add origin YOUR_REMOTE_URL
    ```
6.  **Push**:
    ```bash
    git push -u origin main
    ```

---

### Phase 1: Firebase Project Setup
1.  **Create Project**: Go to the [Firebase Console](https://console.firebase.google.com/) and create a new project named `Mojquiz`.
2.  **Add Apps**:
    *   **Android**: Register with your package name (e.g., `com.example.mojquiz`). Download `google-services.json` and place it in `android/app/`.
    *   **iOS**: Register your Bundle ID. Download `GoogleService-Info.plist` and place it in `ios/Runner/` using Xcode.
3.  **Enable Services**:
    *   **Authentication**: Enable Google, Email/Password, and Anonymous sign-in.
    *   **Firestore**: Create a database in "Production Mode" and select a region.
    *   **Functions**: Upgrade to the Blaze plan (required for external LLM API calls).

---

### Phase 2: Environment Variables
1.  Create a `.env` file in the root directory.
2.  Add your API keys:
    ```env
    OPENAI_API_KEY=your_openai_key_here
    ADMOB_ANDROID_APP_ID=ca-app-pub-xxx~xxx
    ADMOB_IOS_APP_ID=ca-app-pub-xxx~xxx
    ```

---

### Phase 3: Backend Deployment
1.  **Security Rules**:
    ```bash
    firebase deploy --only firestore:rules
    ```
2.  **Cloud Functions**:
    *   Navigate to `firebase/functions`.
    *   Run `npm install`.
    *   Run `firebase deploy --only functions`.

---

### Phase 4: Monetization (AdMob)
1.  Create an [AdMob Account](https://admob.google.com/).
2.  Create an App and a **Rewarded Ad Unit**.
3.  Update the `adUnitId` in `lib/features/monetization/ad_service.dart` with your real IDs (keep using Test IDs for development).

---

### Phase 5: Build & Run
1.  **Generate Code**: Run this to generate the Freezed models and Riverpod providers.
    ```bash
    flutter pub run build_runner build --delete-conflicting-outputs
    ```
2.  **Launch App**:
    ```bash
    flutter run
    ```

---

### Checklist for Production Release
- [ ] Replace all Test Ad IDs with Production Ad IDs.
- [ ] Configure Apple App Tracking Transparency (ATT) in `Info.plist`.
- [ ] Upload Privacy Policy and Terms of Service to a public URL and update links in `ProfileScreen`.
- [ ] Set up Firebase Remote Config for dynamic XP/Coin tuning.

---

### [Bonus] Firebase + GitHub Integration (Vercel-Style)
Yes, you can connect Firebase to GitHub so that every "Push" automatically deploys your backend (Rules, Functions, Web) just like Vercel.

1.  **Firebase CLI**: Open terminal and run:
    ```bash
    firebase init github
    ```
2.  **Authorize**: It will open a browser to authorize Firebase to access your GitHub account.
3.  **Choose Repo**: Select your `mojquiz` repository.
4.  **Auto-deployment**:
    *   It will ask: *"Set up a workflow to run a build script before every deploy?"* -> Select **Yes**.
    *   It will ask: *"Set up automatic deployment to Firebase on merge?"* -> Select **Yes**.
5.  **GitHub Secrets**:
    *   The CLI will automatically create a Service Account and add a secret named `FIREBASE_SERVICE_ACCOUNT_MOJQUIZ` to your GitHub repository secrets.
6.  **Push to Deploy**: Now, any code you push to your `main` branch will automatically trigger the deployment of your **Cloud Functions** and **Firestore Rules**.
