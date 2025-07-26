# Earnifi Mobile Lending Dashboard 📱

A Flutter app that simulates a user's interaction with Earnifi's lending services.

## 🎬 Demo Preview

![Earnifi Demo](assets/earnifi_demo.gif)
---

## 🧱 Architecture

- **Clean Architecture**: Domain, Data, Presentation
  separation[https://blog.codemagic.io/clean-architecture-explored/]
- **State Management**: BLoC (flutter_bloc)
- **Dependency Injection**: GetIt
- **Networking**: Dio
- **Code Generation**: Freezed & Json Serializable
- **Crash Reporting**: Firebase Crashlytics(For now I have used Flutter's built-in error handling)

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
git clone https://github.com/KishorP18/earnifi_task
cd earnifi
flutter pub get
flutter pub run build_runner build --delete-conflicting-outputs
flutter run
```

### Widget testing

```bash
flutter test
```

