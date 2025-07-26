# Earnifi Mobile Lending Dashboard 📱

A Flutter app that simulates a user's interaction with Earnifi's lending services.

---

## 🧱 Architecture

- **Clean Architecture**: Domain, Data, Presentation separation
- **State Management**: BLoC (flutter_bloc)
- **Dependency Injection**: GetIt
- **Networking**: Dio (simulated)
- **Code Generation**: Freezed & Json Serializable

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
