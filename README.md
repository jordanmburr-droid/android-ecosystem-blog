# Flock Camera Locator App
**Course Project Milestone Submission: Week 4 Outline Update**

Welcome to the repository for the **Flock Camera Locator App**. This is a beginner-friendly mobile app project designed to help citizens map, track, and visualize automated license plate reader (ALPR) cameras in their local communities to promote visual privacy awareness.

---

## 📅 Project Version Changelog
This changelog tracks updates, adjustments, and modifications to our app scope up to the current week.

| Version | Project Week / Milestone | Core Summary & Status Updates |
| :--- | :--- | :--- |
| **v0.1** | Weeks 2-3: Core Concept | Outlined the initial concept, core problem statement, and basic 2-screen application structure. |
| **v0.2** | **Week 4: Blueprint Update (Current)** | Added Changelog and Changes sections. Refined the app to use 100% free open-source map resources and anonymous pin logic to keep the budget at \$0 and maximize user privacy. |

---

## 🛠️ Identified Changes (Week 4 Updates)
Following Week 4's project review, we simplified the design to keep it low-budget and aligned with a beginner-level scope:
1. **Zero-Cost Maps:** Shifted from generic paid mapping software to free, open-source alternatives (like OpenStreetMap layout models) to eliminate any API billing or operating expenses.
2. **Simplified Privacy-First Backend:** Removed user accounts and authentication. Users can view the map and submit camera locations completely anonymously, protecting their data and drastically simplifying the database architecture.
3. **Streamlined Form Processing:** Simplified the submission menu down to basic numerical latitude/longitude data points to ensure easy storage.

---

## 📋 Project Blueprint

### 1. Problem Statement
Automated surveillance cameras (like Flock Safety devices) are spreading quickly without significant public knowledge or tracking. This app solves that problem by giving citizens ownership of public data, providing an interactive, transparent view of where these monitoring devices are located.

### 2. Platform Target
* **Platform:** Cross-Platform Mobile Application (Android / iOS deployment capability).
* **Rationale:** A single, accessible mobile application makes it easy for everyday users to view the map or log a camera while out in their neighborhoods.

### 3. Core Features
* **Interactive Map Display:** Renders a clean local map canvas populated with visual pin markers indicating documented surveillance zones.
* **Anonymous Camera Reporting:** A simple form letting users instantly input GPS coordinates to share new camera locations with the community database.
* **Proximity Alerts:** A lightweight alert feature that notifies users if they choose to see notifications when entering a mapped zone.

---

## 🗺️ Wireframe & Interface Layout

### UI Screen Navigation Flow
`[ Welcome Screen ] ---> [ Main Map View ] ---> [ Add Camera Form ]`

### Component Blueprints
* **Screen 1 (Main Map View):** A clear title banner at the top, a full-screen interactive map centered on the user, and a single floating `[ + Report New Camera ]` button at the bottom.
* **Screen 2 (Submission Form):** Input blocks for Latitude and Longitude coordinates, an optional image asset upload block, and a green `[ Submit to Database ]` button next to a red `[ Cancel ]` button.

---

## 💻 Code Architecture Outline
To keep implementation accessible and easy to read, the fundamental structure of our app functions through a simple logic format.

### 1. Sample Map Layout Component Structure
This is the simplified component tree structure showing how the application elements fit together:
```text
- AppRoot (Main Window Container)
  ├── HeaderBanner (App Title Label)
  ├── MapCanvas (Main Visual Map Element)
  │     └── MapMarkerGroup (Collection of active camera pins)
  └── InteractionBar (Layout block for navigation controls)
        └── Button_ReportCamera (Triggers transition to submission screen)
```

### 2. Conceptual Data Structure for Camera Locations
When a user submits a camera location, the app stores it as a lightweight JSON data object. Here is a baseline example of how a single camera point is saved in our database:
```json
{
  "camera_id": "cam_9824",
  "latitude": 27.7731,
  "longitude": -82.6401,
  "verification_status": "unverified",
  "timestamp": "2026-09-27T17:30:00Z"
}
```
  * Floating Bottom Button: Large `[ + Report New Camera ]` button to trigger the submission interface.
* **Screen 2: Camera Submission Form**
  * Top Input Field: Text field displaying automatically generated GPS Latitude/Longitude coordinates.
  * Center Option: `[ Take / Upload Photo ]` media button.
  * Bottom Layout: Green `[ Submit to Database ]` button next to a red `[ Cancel ]` button.
