# ♟️ MonMate
> High-Frequency Web3 Chess with Real-Time Social Betting on Monad.

[![Monad Network](https://img.shields.io/badge/Network-Monad_Mainnet-6B4DFF?style=for-the-badge&logo=monero&logoColor=white)](https://monad.xyz)
[![UI](https://img.shields.io/badge/UI-Animated_Monad_Pulse-6B4DFF?style=for-the-badge)](#)
[![Web3](https://img.shields.io/badge/Web3-EVM_Compatible-3C3C3D?style=for-the-badge&logo=ethereum&logoColor=white)](#)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg?style=for-the-badge)](https://opensource.org/licenses/MIT)

---

**MonMate** is an elite, cross-platform chess application built for the **Monad** ecosystem. It features an immersive "Pulsing Heartbeat" aesthetic, trustless $MON wagering, and real-time social interaction—optimized for everything from mobile phones to Smart TVs and Refrigerators.

## 🚀 Key Features

* **⚡ Monad High-Speed Betting:** Sub-second wager settlement and ultra-low gas fees using native $MON.
* **🎥 Live Social Hub:** HD Video, Audio, and Messenger integration for real-time trash talk and strategy.
* **💓 Pulsing UI:** Dynamic, code-generated background effects inspired by high-frequency node monitoring.
* **📺 Universal Logic:** A single codebase optimized for high-performance on Phones, Tablets, and Android-based IoT displays.
* **📶 Offline Resilience:** Full move validation and PGN tracking even when the network is dark.

## 🛠️ Technical Architecture

| Layer | Technology Stack |
| :--- | :--- |
| **Frontend** | Flutter (Dart 3.x) |
| **Blockchain** | Monad (EVM-compatible) via `web3dart` |
| **Social/Real-time** | LiveKit (WebRTC) & Supabase Presence |
| **Offline DB** | Isar (High-performance NoSQL) |
| **Smart Contracts** | Solidity (Foundry Toolchain) |

## 📦 Project Structure

```text
/monmate
├── contracts/              # Solidity betting contracts (Forge/Foundry)
├── assets/                 # High-res Monad & Chess branding assets
├── lib/
│   ├── core/               # PulsingBackground UI & Theme engine
│   ├── features/
│   │   ├── chess/          # Move validation & PGN logic
│   │   ├── social/         # Video, Audio, & Messenger providers
│   │   └── wallet/         # $MON Wager management & Web3 Connect
│   └── main.dart           # Adaptive entry point
└── README.md
