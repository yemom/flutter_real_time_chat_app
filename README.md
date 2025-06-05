# 📚 Mobile Tutor App

A powerful cross-platform mobile app built with **Flutter**, created to streamline tutoring services for students and tutors. Designed with a clean UI and Firebase-backed functionality for seamless user experience.

---

## ✨ Features

- 🔐 **Secure Authentication** – Login and register with Firebase Authentication.
- 🎓 **Tutor & Student Roles** – Role-based UI and actions.
- 📅 **Course Management** – Tutors can add, edit, and manage their courses.
- 🕒 **Schedule Sessions** – Integrated calendar and time picker for setting sessions.
- 💬 **Chat Integration** – Real-time communication between tutors and students *(Planned)*.
- 📱 **Responsive UI** – Adaptive design for Android & iOS.

---

## 🛠️ Tech Stack

- **Flutter & Dart** – Cross-platform UI and logic.
- **Firebase** – Auth, Firestore (DB), and Storage.
- **Provider** – State management.
- **Cloud Firestore** – For storing user and course data.
- **Firebase Storage** – For uploading profile images and course materials.

---

## 📁 Project Structure
lib/
├── models/ # Data classes (User, Course, etc.)
├── screens/ # UI screens for both students & tutors
├── services/ # Firebase service layers
├── widgets/ # Reusable UI components
├── providers/ # App-wide state management
└── main.dart # App entry point

