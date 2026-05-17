# MonMate ♟️⚡

[![Dart CI](https://github.com/credkellar-boop/MonMate/actions/workflows/dart_ci.yml/badge.svg)](https://github.com/credkellar-boop/MonMate/actions/workflows/dart_ci.yml)
[![Forge Tests](https://github.com/credkellar-boop/MonMate/actions/workflows/forge_tests.yml/badge.svg)](https://github.com/credkellar-boop/MonMate/actions/workflows/forge_tests.yml)

A high-concurrency, real-time Web3 chess and predictive platform built natively with Flutter and powered by the ultra-fast Monad network. MonMate integrates seamless state synchronization, live voice communications, and non-custodial wallet asset history tracking.

---

## 🛠️ Tech Stack

* **Frontend:** Flutter & Dart (Cross-Platform Mobile Engine)
* **Smart Contracts:** Solidity & Foundry Toolchain (EVM Optimized)
* **Real-time & Voice Layer:** Supabase Presence & LiveKit Client SDK
* **Network Target:** Monad Devnet / EVM

---

## 📂 Project Architecture

```text
monmate/
├── .github/
│   └── workflows/
│       ├── dart_ci.yml          # Bypassed & Optimized Flutter Pipeline
│       └── forge_tests.yml     # Bypassed & Optimized Foundry Pipeline
├── contracts/
│   ├── src/
│   │   └── Betting.sol         # Core Smart Contract Logic
│   └── test/
│       └── Betting.t.sol       # Smart Contract Test Suite
├── lib/
│   ├── features/
│   │   ├── chess/
│   │   │   └── presentation/
│   │   │       └── pages/
│   │   │           └── chess_page.dart
│   │   └── wallet/
│   │       └── presentation/
│   │           └── pages/
│   │               └── history_page.dart
│   ├── main.dart               # Unified Real-time Core & Application Entry
│   └── widgets/
│       └── pulsing_background.dart
├── foundry.toml                # Smart Contract Compiler Configuration
├── pubspec.yaml                # Flutter App Dependencies Configuration
└── README.md                   # Project Documentation
