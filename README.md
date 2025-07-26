# Earnifi Mobile Lending Dashboard 📱

A Flutter app that simulates a user's interaction with Earnifi's lending services.

---

## 🧱 Architecture

- **Clean Architecture**: Domain, Data, Presentation separation
- **State Management**: BLoC (flutter_bloc)
- **Dependency Injection**: GetIt
- **Networking**: Dio (simulated)
- **Code Generation**: Freezed & Json Serializable
- **Crash Reporting**: Firebase Crashlytics

---

## 📱 Features

### ✅ Dashboard Screen
- Shows current loan balance, credit limit, and next repayment details

### ✅ Withdraw Funds
- Input + validation
- Simulated withdrawal with animation

### ✅ Repayment History
- Paginated & searchable list

### ✅ Loan Summary
- Bottom modal showing interest, disbursed, repaid amounts

---

## 🚀 Getting Started

```bash
git clone <your_repo_link>
cd earnifi_lending_dashboard
flutter pub get
flutter pub run build_runner build --delete-conflicting-outputs
flutter run
```

---

## 🛡️ Firebase Crashlytics Setup

This app uses [Firebase Crashlytics](https://firebase.google.com/docs/crashlytics) for crash reporting.

### 1. Create a Firebase Project
- Go to [Firebase Console](https://console.firebase.google.com/)
- Add a new project (or use an existing one)

### 2. Register Your App
- Register your Android and/or iOS app in the Firebase Console
- Download the config files:
  - **Android:** `google-services.json` → place in `android/app/`
  - **iOS:** `GoogleService-Info.plist` → place in `ios/Runner/`

### 3. Android Setup
- In `android/build.gradle`, add:
  ```gradle
  classpath 'com.google.gms:google-services:4.3.15' // (in buildscript > dependencies)
  ```
- In `android/app/build.gradle`, add at the bottom:
  ```gradle
  apply plugin: 'com.google.gms.google-services'
  ```

### 4. iOS Setup
- In `ios/Runner/`, add `GoogleService-Info.plist` via Xcode (right-click > Add Files to "Runner")
- In `ios/Podfile`, ensure platform is at least 11.0
- Run:
  ```bash
  cd ios
  pod install
  cd ..
  ```

### 5. Flutter Integration
- Crashlytics is initialized in `main.dart`:
  ```dart
  await Firebase.initializeApp();
  FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterError;
  ```
- To log a test error:
  ```dart
  FirebaseCrashlytics.instance.log('Test log message');
  ```

### 6. Run the App
- Build and run on a real device or emulator.
- Crashes and errors will be reported in the Firebase Console.

---
