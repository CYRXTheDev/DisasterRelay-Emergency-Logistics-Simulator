# DisasterRelay: Emergency Logistics Simulator

[![Engine](https://img.shields.io/badge/Engine-Godot_4.x-blue.svg)](https://godotengine.org/)
[![Language](https://img.shields.io/badge/Language-GDScript-green.svg)](https://docs.godotengine.org/)
[![Platform](https://img.shields.io/badge/Platform-PC_Windows-orange.svg)]()

**DisasterRelay** is a 2D top-down emergency logistics management game developed in Godot Engine 4.x. The game simulates real-world disaster response and relief distribution in flood-affected urban regions, highlighting strategic vehicle deployment, resource management, and dynamic hazard navigation.

---

## 🎯 Game Overview & Objective

In the aftermath of a severe urban flood, players take control of emergency response units to dispatch critical relief supplies (food packs, medical kits) to high-risk evacuation centers before time runs out. Players must balance vehicle speed, fuel consumption, and terrain hazards to maximize community survival.

### Key Features
* **Multi-Vehicle Mechanics:** Strategic usage of relief trucks, ambulances, and rescue boats based on terrain conditions (flooded vs. clear roads).
* **Dynamic Flood Hazards:** Waterlogged zones slow down ground transport and require adaptive routing.
* **Resource & Fuel Management:** Monitor fuel levels and supply inventory during high-stakes dispatch runs.
* **Automated Metrics Logging:** Exports post-game performance metrics and high scores to text format (`.txt`) for analysis.

---

## 🛠️ Tech Stack & Requirements

* **Game Engine:** Godot Engine 4.x (Standard Edition)
* **Scripting Language:** GDScript
* **Target Platform:** Desktop (PC / Windows / Mac / Linux)
* **Version Control:** Git / GitHub Desktop

---

## 📁 Project Directory Structure

```text
res://
├── assets/                  # Raw media resources
│   ├── sprites/             # Vehicle, map, and HUD graphics
│   ├── audio/               # Background music (BGM) and sound effects (SFX)
│   └── fonts/               # Game typography
├── scenes/                  # Reusable scenes (.tscn)
│   ├── ui/                  # Main Menu, HUD, Game Over overlays
│   ├── levels/              # Main playable stage layouts
│   └── entities/            # Player vehicles, civilians, and blockades
├── scripts/                 # Core logic files (.gd)
│   ├── global.gd            # AutoLoad singleton for scores & file exports
│   ├── player.gd            # Vehicle movement and fuel mechanics
│   ├── map_manager.gd       # Flood and hazard system
│   └── ui_controller.gd     # HUD state management
└── export_logs/             # Output destination for generated game reports