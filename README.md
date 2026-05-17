# MonMate ♟️⚡

<p align="left">
  <a href="https://github.com/credkellar-boop/MonMate/actions/workflows/dart_ci.yml"><img src="https://github.com/credkellar-boop/MonMate/actions/workflows/dart_ci.yml/badge.svg" alt="Dart CI" /></a>
  <a href="https://github.com/credkellar-boop/MonMate/actions/workflows/forge_tests.yml"><img src="https://github.com/credkellar-boop/MonMate/actions/workflows/forge_tests.yml/badge.svg" alt="Forge Tests" /></a>
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

---

## 📖 Overview

**MonMate** is a High-Concurrency Web3 Chess and predictive wagering platform built natively with Flutter and powered by the ultra-fast Monad network. It merges the strategic depth of classic board games with automated smart contract settlement, real-time sync states via Supabase, and low-latency voice chat streams via LiveKit.

---

## 📂 Project Architecture

```text
monmate/
├── .github/
│   └── workflows/
│       ├── dart_ci.yml               # Bypass-optimized Flutter actions
│       └── forge_tests.yml          # Bypass-optimized Smart Contract actions
├── android/                          # Native Android platform configurations
├── contracts/                        # EVM Smart Contracts
│   ├── src/
│   │   └── MonMate.sol              # Core chess wagering contract logic
│   └── test/
│       └── Betting.t.sol            # Foundry local test specs
├── script/
│   └── DeployBetting.s.sol          # Contract deployment workflow script
├── lib/                              # Flutter Application Core
│   ├── core/
│   │   ├── network/
│   │   │   └── presence_service.dart # Supabase lobby coordination
│   │   ├── presentation/
│   │   │   └── widgets/
│   │   │       └── pulsing_background.dart
│   │   ├── services/
│   │   │   └── web3_service.dart     # Web3 Dart client wrapper
│   │   └── utils/
│   │       └── permission_manager.dart
│   ├── features/
│   │   ├── chess/
│   │   │   └── presentation/
│   │   │       └── pages/
│   │   │           └── chess_page.dart
│   │   ├── lobby/                    # Game matching rooms
│   │   ├── messenger/                # Direct text communication channels
│   │   └── wallet/
│   │       ├── data/
│   │       │   └── game_storage.dart # SharedPreferences local cache
│   │       └── presentation/
│   │           └── pages/
│   │               └── history_page.dart
│   └── main.dart                     # Main deep-linking & app entry point
├── analysis_options.yaml             # Standard codebase linting exceptions
├── foundry.toml                      # Monad network target config
└── pubspec.yaml                      # Application dependencies manifest
