# MonMate ♟️⚡

[![Dart CI](https://github.com/credkellar-boop/MonMate/actions/workflows/dart_ci.yml/badge.svg)](https://github.com/credkellar-boop/MonMate/actions/workflows/dart_ci.yml)
[![Forge Tests](https://github.com/credkellar-boop/MonMate/actions/workflows/forge_tests.yml/badge.svg)](https://github.com/credkellar-boop/MonMate/actions/workflows/forge_tests.yml)
# MonMate ♟️⚡

<p align="left">
  <a href="https://github.com/credkellar-boop/MonMate/actions/workflows/dart_ci.yml">
    <img src="https://github.com/credkellar-boop/MonMate/actions/workflows/dart_ci.yml/badge.svg" alt="Dart CI" />
  </a>
  <a href="https://github.com/credkellar-boop/MonMate/actions/workflows/forge_tests.yml">
    <img src="https://github.com/credkellar-boop/MonMate/actions/workflows/forge_tests.yml/badge.svg" alt="Forge Tests" />
  </a>
</p>

<p align="left">
  <img src="https://img.shields.io/badge/Flutter-%2302569B.svg?style=flat&logo=Flutter&logoColor=white" alt="Flutter" />
  <img src="https://img.shields.io/badge/Dart-%230175C2.svg?style=flat&logo=Dart&logoColor=white" alt="Dart" />
  <img src="https://img.shields.io/badge/Solidity-%23363636.svg?style=flat&logo=solidity&logoColor=white" alt="Solidity" />
  <img src="https://img.shields.io/badge/Foundry-%23363636.svg?style=flat" alt="Foundry" />
  <img src="https://img.shields.io/badge/Monad_Devnet-%23201A30.svg?style=flat" alt="Monad Network" />
  <img src="https://img.shields.io/badge/Supabase-%233ECF8E.svg?style=flat&logo=supabase&logoColor=white" alt="Supabase Realtime" />
  <img src="https://img.shields.io/badge/LiveKit-%23FF3B30.svg?style=flat" alt="LiveKit WebRTC" />
</p>
<p align="left">
  <img src="https://img.shields.io/badge/Platform-Android-3DDC84?style=flat&logo=android&logoColor=white" alt="Android" />
  <img src="https://img.shields.io/badge/Platform-iOS-000000?style=flat&logo=ios&logoColor=white" alt="iOS" />
  <img src="https://img.shields.io/badge/License-MIT-yellow.svg?style=flat" alt="License" />
</p>

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
