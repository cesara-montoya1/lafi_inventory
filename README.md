# LAFI Inventory Manager

A cross-platform Flutter application built with **Clean Architecture** principles to streamline equipment cataloging, optical component tracking, and asset management for the **Laboratorio de Fotónica e Instrumentación (LAFI)** at Universidad de Antioquia.

## 🔬 Purpose & Context

Managing precision photonic devices, optical fibers, laser sources, optical spectrum analyzers (OSA), and custom experimental jigs requires a reliable, offline-first, and structured inventory tracking system. `lafi_inventory` provides real-time search, categorization, and state tracking of laboratory equipment.

## 🏛️ Architecture

The project adheres strictly to **Clean Architecture** with separation into three distinct layers:

```
lib/
├── features/
│   └── inventory/
│       ├── data/            # Data sources, DTO models, and repository implementations
│       ├── domain/          # Core entities, value objects, and business use cases
│       └── presentation/    # UI screens, Flutter widgets, and state management
└── main.dart                # Application entrypoint and dependency injection
```

## 🚀 Getting Started

### Prerequisites
- [Flutter SDK](https://docs.flutter.dev/get-started/install) (version 3.0.0 or higher)
- Dart SDK 3.0+

### Setup & Run
```bash
# Clone the repository
git clone https://github.com/cesara-montoya1/lafi_inventory.git
cd lafi_inventory

# Install dependencies
flutter pub get

# Run on your target platform (Linux Desktop / Android / Web)
flutter run
```

## 👥 Authors & Laboratory

- **Developer:** César Alejandro Montoya Gómez
- **Laboratory:** Laboratorio de Fotónica e Instrumentación (LAFI) / Grupo GITA, Universidad de Antioquia (UdeA).
