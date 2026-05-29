# CloudFlare Pages Status Desktop Monitor

A highly polished, zero-configuration **System Tray / Menu Bar desktop application** for Windows and macOS that monitors build and deployment statuses across your Cloudflare Pages projects in real time. 

Built in Python, the app provides beautiful OS-native alerts (Windows Toasts / macOS Banners) and is designed to run silently in the background with a zero-footprint memory profile.

---

## Key Features

* **🛰️ Zero-Configuration Setup**: Leverage your active local secure `npx wrangler` browser login. The app automatically discovers all Pages projects on your account with zero API token hassle or manual project ID entries.
* **☁️ Dynamic In-Memory Visuals**: Renders a gorgeous, custom glassmorphic status icon in-memory (utilizing Pillow). The iconic Cloudflare Orange Cloud has an integrated status glow indicator (**Green** = Live, **Yellow** = Compiling, **Red** = Failed, **Grey** = Offline) without requiring any physical assets/images on your disk.
* **⚙️ Multi-Project Checklist**: A sleek, dark-themed settings checklist GUI to select exactly which Page sites you want build notifications for.
* **🚀 Native OS Startup Boot**: A single checkbox to run on computer start (adds a secure `HKCU` registry entry on Windows, or creates a standard user-space LaunchAgent plist on macOS).
* **🌐 Responsive Action Menus**: Click any project row directly in the system tray menu to instantly open that project's pages website in your default browser.
* **⚡ Force Check Now**: Need immediate status? Click the tray menu's check button to query Cloudflare instantly.

---

## Prerequisites

1. **Python 3.8+** must be installed on your system.
2. **Wrangler CLI Login**: You must be logged into Cloudflare locally in your terminal. If you aren't, open a terminal and run:
   ```bash
   npx wrangler login
   ```
   *Note: If the application detects a missing session, it will show a prompt to let you easily re-authorize in a browser tab with a single click.*

---

## Quick Start

1. **Install Dependencies**:
   Open a terminal in this project folder and run:
   ```bash
   pip install -r requirements.txt
   ```

2. **Run the Application**:
   Launch the app in the background:
   ```bash
   python cloudflare_pages_status.py
   ```
   *If launching for the first time, the dark-themed settings menu will automatically popup to let you choose your projects and check intervals.*

---

## Compilation (Packaging as a Standalone Executable)

You can package this Python script into a single executable binary that can be launched directly without showing any background command prompt/console windows.

### 💻 On Windows (1-Click)
Simply double-click the included `compile.bat` file. 

This batch script automatically verifies requirements, installs `pyinstaller`, and compiles your script into a standalone executable. Once finished, you will find a portable executable:
```
.\dist\Cloudflare Pages Status.exe
```

### 🍎 On macOS
Open your terminal in this directory and run:
```bash
pip install -r requirements.txt pyinstaller
pyinstaller --onefile --noconsole --name="Cloudflare Pages Status" cloudflare_pages_status.py
```
This produces a native macOS application bundle in:
```
./dist/Cloudflare Pages Status.app
```
You can drag this `.app` package directly into your `/Applications` directory!

---

## File Structure

```
CloudFlare Pages Status/
├── cloudflare_pages_status.py   # Main Python desktop tray application
├── requirements.txt             # Project library dependencies
├── .gitignore                   # Excludes Python bytecode and build assets from git
├── README.md                    # Developer guide & documentation (this file)
└── compile.bat                  # 1-click executable compiler for Windows
```
