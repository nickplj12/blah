# The BLAH! Web Browser

<!--<img style="width: 128px; height: 128px" src="Website\static\favicon.png" />-->



<!--https://github.com/user-attachments/assets/192a330c-4102-4b84-b50d-1f1698d87fa7-->


"That was pretty funny ngl"

## About

BLAH! is a fork of [Bussin Wattesigma](https://wattesigma.com) built with the Godot Engine and powered by the Chromium Embedded Framework (CEF). It revolutionises the web browsing experience by allowing you to use **shaders** and a bunch of other stuff that is supposed to "entertain" you.

## Setup and Installation

### Pre-built
Please download the latest release of BLAH! from the [Releases](https://github.com/nickplj12/blah/releases) tab.

### Compiling

You will need:
- [Godot Engine](https://godotengine.org/) (version 4.x or later)
- [CEF (Chromium Embedded Framework)]([https://github.com/face-hh/wattesigma/releases](https://github.com/Lecrapouille/gdcef/releases/tag/v0.12.1-godot4)) (`cef_artifacts`)

### Getting Started

1. Clone the repository:
   ```
   git clone https://github.com/nickplj12/blah.git
   ```

2. Open the project in Godot Engine.

3. Configure CEF:
   - Download the `cef_artifacts` file off the [Releases](https://github.com/Lecrapouille/gdcef/releases/tag/v0.12.1-godot4) from the `gdcef` repository.
   - Extract the contents to the project root. You should have the folders `cef_artifacts, Website, Assets, Shaders, ...`

4. Run the project from the Godot editor or export it for your target platform.

## Usage

- Launch the BLAH! browser
- If run for the first time, you'll be greeted with a welcome page.
- Press `CTRL` + `I` or the ℹ️ icon on the topbar for all the available shortcuts.
- Press `CTRL` + `L` or the 🔍 icon on the topbar and enter a URL in the address bar.
- Press `CTRL` + `S` or the ⚙️ icon on the topbar to change some settings.

## Features

- "Blah" pages
     - "blah:doom" - Play DOOM
     - "blah:mario" - Spawn a mario using libsm64 (you need a SM64 US ROM)
     - "blah:killmario" - Kill your mario
- New window border & icons so you don't have to use keyboard shortcuts
  
and more!

## Contributing

We welcome contributions to BLAH! Please keep the following in mind:

- Open an issue before starting work on major changes or new features, as it may create conflicts with existing pull requests, or the rewrite you wish to do isn't needed.
- Follow the existing code style and conventions.
- Write clear, concise commit messages.
- Update documentation as needed.

## License

This project is licensed under the Apache 2.0 License. See the [LICENSE](LICENSE.md) file for details.

## Acknowledgments

- The Godot Engine community
- The [gdcef](https://github.com/Lecrapouille/gdcef) project contributors
- FaceDev for making [Bussin Wattesigma](https://wattesigma.com)
- Brawmario for making [libsm64](https://github.com/Brawmario/libsm64-godot)
Created by nickplj12
