# 💬 Social Chat App (Flutter)

A cross-platform Flutter app with social feed, profiles, nearby users map, and in-app chat. This repo is **not** Firebase-backed; it uses a custom REST backend and a WebSocket for chat.

---

## ✨ Features (Implemented)

- 🔐 **Authentication** – Login, signup, and forgot password flows.
- 🧑‍🤝‍🧑 **Profiles** – Profile page, edit profile, avatar upload, and cover photo.
- 📰 **Feed** – Post list with like/comment/share actions and image support.
- ➕ **Create Post** – Compose a post with optional image upload.
- 🗺️ **Nearby** – Map view with user markers and bottom-sheet user cards.
- 💬 **Chat**
  - Chat list with search and recent conversations
  - In-app chat screen with message composer
  - WebSocket listener for incoming messages
  - Unread counts per conversation

---

## 🧩 Planned / Not Yet Implemented

- ✅ Typing indicators
- ✅ Presence / online status
- ✅ Push notifications
- ✅ Media sharing in chat (image/video)
- ✅ End-to-end encryption

## 🛠️ Tech Stack

- **Flutter & Dart** – Cross-platform UI and logic.
- **Provider** – State management.
- **REST API** – For auth, posts, and profile updates.
- **WebSocket** – For realtime chat updates.
- **flutter_map / OpenStreetMap** – Nearby map UI.

---

## 📁 Project Structure

lib/
├── data/ # Models + API services
├── pages/ # App screens
├── component/ # Reusable UI widgets
├── provider/ # App-wide state management
├── config/ # Routes, strings, app config
└── main.dart # App entry point

## ▶️ How to Run

### Prerequisites

- Flutter SDK (stable)
- A running backend API (see backend/README.md if present)

### Configure API Base URL

The app reads the API base URL from:

- `--dart-define=MOBILE_HOST=...` (preferred), or
- the default in `AppConfig` (LAN host)

Example:

- Android emulator: `--dart-define=MOBILE_HOST=http://10.0.2.2:8081`
- Physical device (LAN): `--dart-define=MOBILE_HOST=http://<your-lan-ip>:8081`

### Run the App

1. `flutter pub get`
2. `flutter run --dart-define=MOBILE_HOST=http://<host>:8081`

### Run Tests

- Widget tests: `flutter test`
- Integration tests: `flutter test integration_test/all_pages_test.dart`
