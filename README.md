# MonMate ♟️

![Flutter](https://img.shields.io/badge/Flutter-%2302569B.svg?style=for-the-badge&logo=Flutter&logoColor=white)
![Dart](https://img.shields.io/badge/Dart-%230175C2.svg?style=for-the-badge&logo=dart&logoColor=white)
![Solidity](https://img.shields.io/badge/Solidity-%23363636.svg?style=for-the-badge&logo=solidity&logoColor=white)
![Foundry](https://img.shields.io/badge/Foundry-Smart_Contracts-lightgrey?style=for-the-badge)
![Monad](https://img.shields.io/badge/Monad-Web3_Network-836EF9?style=for-the-badge)
![Supabase](https://img.shields.io/badge/Supabase-3ECF8E?style=for-the-badge&logo=supabase&logoColor=white)
![LiveKit](https://img.shields.io/badge/LiveKit-Realtime_WebRTC-FF5A5F?style=for-the-badge)
![Platform: Android](https://img.shields.io/badge/Platform-Android-3DDC84?style=for-the-badge&logo=android&logoColor=white)
![Platform: iOS](https://img.shields.io/badge/Platform-iOS-000000?style=for-the-badge&logo=ios&logoColor=white)
![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg?style=for-the-badge)

[![Dart CI](https://img.shields.io/github/actions/workflow/status/<USERNAME>/monmate/dart_ci.yml?style=for-the-badge&label=Dart%20CI&logo=github)](https://github.com/<USERNAME>/monmate/actions/workflows/dart_ci.yml)

## 📖 Overview

**MonMate** is a High-Frequency Web3 Chess application built natively with Flutter and powered by the Monad network. It merges the strategic depth of classic chess with real-time Web3 wagering, seamlessly integrating integrated voice/video social presence to replicate the feel of over-the-board play.

## ✨ Features

* **High-Frequency Web3 Wagering:** Smart contracts built in Solidity and tested with Foundry to handle secure, fast chess matches on the Monad devnet.
* **Real-time Multiplayer:** Powered by Supabase for instant presence, matchmaking, and lobby chat.
* **Integrated Social Presence:** Live video and audio chat overlays integrated directly into the game using LiveKit.
* **WalletConnect v2 Integration:** Connect your favorite Web3 wallets effortlessly.
* **Deep Linking:** Shareable match invites that directly open the app to the specific wager challenge.
* **Offline Support:** Local game history and state persistence using Isar Database.

## 🛠 Tech Stack

### Frontend (Mobile App)
* **Framework:** [Flutter](https://flutter.dev/) (SDK `>=3.1.0 <4.0.0`)
* **Blockchain Interaction:** `web3dart`, `walletconnect_flutter_v2`
* **Backend Services:** `supabase_flutter` (Presence/Chat), `livekit_client` (WebRTC Video/Audio)
* **Local Storage:** `isar`, `shared_preferences`
* **State Management / UI:** `animate_do`, customized pulsing backgrounds, and interactive overlays.

### Backend (Smart Contracts)
* **Language:** Solidity (`^0.8.20`)
* **Framework:** [Foundry](https://book.getfoundry.sh/) (Forge)
* **Network:** Monad Devnet/Testnet

## 🚀 Getting Started

### Prerequisites

* [Flutter SDK](https://docs.flutter.dev/get-started/install) (Version 3.19.0 or higher recommended)
* [Foundry](https://book.getfoundry.sh/getting-started/installation) (For smart contract development and testing)
* A Supabase Project
* A LiveKit Cloud instance or self-hosted server

### Installation

1.  **Clone the repository:**
    ```bash
    git clone [https://github.com/](https://github.com/)<USERNAME>/monmate.git
    cd monmate
    ```

2.  **Install Flutter dependencies:**
    ```bash
    flutter pub get
    ```

3.  **Setup Environment Variables:**
    Update your initialization scripts (e.g., in `lib/main.dart` and `lib/web3_service.dart`) with your own API keys:
    * `SUPABASE_URL` and `SUPABASE_ANON_KEY`
    * LiveKit URL and Token
    * WalletConnect Project ID

4.  **Run the App:**
    ```bash
    flutter run
    ```

### Smart Contracts

To compile and test the MonMate smart contracts locally:

```bash
cd contracts
forge build
forge test
