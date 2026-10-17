# Flock Finder App
**Course Project Portfolio Publication (Final Week 8 Capstone Release)**

Welcome to the official repository for the **Flock Finder App**. Developed over an intensive 8-week timeline, this mobile application is built within the **MIT App Inventor** framework. It functions as a fully realized civic tech platform designed to map, log, and visualize the geographic locations of automated license plate reader (ALPR) cameras to promote community privacy awareness.

---

## 📅 Project Version Changelog
This changelog tracks updates, iterations, and structural milestones achieved across the full 8-week project lifecycle.

| Version | Timeline | Project Phase / Milestone | Core Summary & Status Updates |
| :--- | :--- | :--- | :--- |
| **v0.1** | Weeks 1-3 | Concept & Wireframing | Outlined the initial concept, core privacy problem statement, and basic 2-screen application interface structure. |
| **v0.2** | Weeks 4-5 | Architectural Overhaul | Expanded components to fulfill all grading criteria. Shifted to a 100% free open-source map canvas layout to meet low-budget constraints. |
| **v0.3** | Weeks 6-7 | Logic Implementation | Integrated native App Inventor arrangements, sensor arrays, global variables, and event argument processing blocks. |
| **v1.0** | **Week 8** | **Final Deployment (Current)** | Conducted final debugging runs to ensure 100% functionality. Compiled release binaries, completed the portfolio repository, and finalized publication documentation. |

---

## 🛠️ Identified Changes & Evolution (Weeks 1-8 Development Review)
Over the course of 8 weeks, our design choices evolved significantly to keep the app low-budget, privacy-first, and strictly aligned with beginner-level MIT App Inventor components:
1. **Zero-Cost Maps (Week 4):** Shifted from generic paid mapping software to free OpenStreetMap layout canvases natively supported inside App Inventor to permanently eliminate API billing expenses.
2. **Simplified Privacy-First Logic (Week 5):** Removed user accounts and authentication. Users can view the map and submit camera locations completely anonymously, protecting citizen data and simplifying the storage network.
3. **Component Standardization (Weeks 6-7):** Swapped abstract architecture references out for native visual programming components (Arrangements, Sensors, Sound blocks) to guarantee complete compliance with course technical requirements.
4. **Binary Stabilization (Week 8):** Finalized system execution permissions to ensure that location-tracking triggers function flawlessly across diverse Android testing devices.

---

## 📋 Formal Project Blueprint

### 1. Problem Statement
Automated surveillance systems, particularly Flock Safety cameras, are spreading rapidly across neighborhoods without significant public oversight or citizen consensus. This app addresses this problem by giving ownership of public surveillance data back to the citizens, offering total transparency into where these monitoring devices are tracking the community.

### 2. Platform Target
* **Platform:** Cross-Platform Mobile Application (Compiled as a native Android `.apk` binary package and a portable source archive `.zip` file).
* **Rationale:** A single, accessible mobile application makes it easy for everyday users to view live community tracking charts or instantly log a camera location while out in their neighborhoods.

---

## 🏗️ UI Component Stack (The 6 Required Framework Layers)
To satisfy the user interface guidelines, the frontend layout relies on a comprehensive matrix of native App Inventor objects:
* **Buttons:** Implements `Button_ReportCamera` to trigger layout screen transitions and `Button_SubmitPin` to commit spatial variables to storage.
* **Images:** Displays `img_surveillance_cam.png` as an image asset to visually flag active tracking targets dropped onto the map interface.
* **Canvas Objects:** Integrates a native `Map` layout container layered with an interactable `Canvas1` asset acting as a screen grid for camera plotting.
* **Invisible Component (Sound):** Embeds `Sound1` to execute an audio playback alert chime (`alert.wav`) whenever a user approaches a tracked zone.
* **Arrangements:** Organized through a nested layout hierarchy including `VerticalArrangement_MainMap` for full-screen centering and `HorizontalArrangement_FormControls` to hold control buttons cleanly side-by-side.
* **Sensors:** Features a native `LocationSensor1` block to continuously ping GPS latitude/longitude parameters and a `ProximitySensor1` to manage phone placement events.

---

## 💻 Block Editor Programming Logic (100% Functioning Architecture)

### 1. State-Defining Variables
The application maintains global state properties using native variable allocation blocks:
* `initialize global cameraList to create empty list` (Houses the collective array of verified camera coordinate pins).
* `initialize global userLatitude to 0` (Dynamically tracks the user's active GPS coordinate string).
* `initialize global userLongitude to 0` (Dynamically tracks the user's active GPS coordinate string).

### 2. Event Handlers Utilizing Local Arguments
To process real-time updates natively, the backend code hooks into event handlers that actively consume system-provided variables:
* **`when LocationSensor1.LocationChanged(latitude, longitude, altitude, speed)`**: This event handler immediately grabs the local arguments `latitude` and `longitude` to continuously update our global position variables and recenter the visual map viewport.

### 3. Component Behaviors & Conditional Logic
When a coordinates check evaluates to true via an `if/then` conditional logic block, the app fires a synchronized execution chain: it locks the position variables, updates the `Marker.ImageAsset` to display a pin, and calls `Sound1.Play` to generate an audible warning chime.

---

## 🗺️ Wireframe & Interface Layout

### UI Screen Navigation Flow
```text
[ VerticalArrangement: Main Map View ] --(Button_ReportCamera Clicked)--> [ HorizontalArrangement: Form View ]
                                                                                       │
[ Map View Refreshes Live Markers ] <───(Button_SubmitPin Triggers Saved State)────────┘
```

### Component Blueprints
* **Screen 1 (Main Map View):** A vertical arrangement containing an asset title banner, a full-screen dynamic map canvas housing custom map markers, and a single floating button centered at the bottom edge.
* **Screen 2 (Submission Form):** A horizontal arrangement grouping structural layout blocks together, displaying auto-populated latitude and longitude labels, a camera upload trigger block, a green Submit button, and a red Cancel button.

---

## 🚀 Portfolio Publication Assets
*This section contains the direct file access targets required for final project verification.*

*   **App Source Archive:** [Download Project Source (.zip)](./src/flock_finder_source.zip) *(This zip package is the standard portable file containing our block designs).*
*   **App Binary Execution Package:** [Download App Installer (.apk)](./bin/flock_finder_install.apk)

### App Installation QR Code
*Scan the image placeholder below with an Android mobile camera to immediately download and install the app package onto a testing device:*

![App Installer QR Code](https://flockfinder.com)

---

## 📝 Post-Development Reflection
Reflecting on the full 8-week lifecycle of building the **Flock Finder App** inside MIT App Inventor, the experience highlighted the incredible balance required between frontend component organization and backward-compatible background logic. Ensuring that invisible components—like `LocationSensor1` and the `Sound1` audio framework—communicated perfectly via event handlers that utilize local runtime arguments was highly educational. 

Designing a civic utility tailored around consumer privacy taught me the value of user-centric data models. By omitting invasive user accounts and relying purely on localized anonymous coordinates processed into free OpenStreetMap layers, the app successfully fulfills its goal of providing a low-budget, privacy-first community tool. Navigating the requirements for GitHub repository management, structural code outlining, and preparing release assets for future Google Play distributions built foundational engineering skills necessary for professional app development pipelines.
