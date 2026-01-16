# Hymo

![Language](https://img.shields.io/badge/Language-C++-00599C?style=flat-square&logo=cplusplus)
![Platform](https://img.shields.io/badge/Platform-Android-3DDC84?style=flat-square&logo=android)
![License](https://img.shields.io/badge/License-Apache--2.0-blue?style=flat-square)

A C++ module manager for KernelSU with support for HymoFS, OverlayFS and Magic Mount.

**[ 🇨🇳 中文 ](docs/README_ZH.md)**

---

## Features

- **Multiple mount modes**: HymoFS (kernel patch required), OverlayFS, Magic Mount
- **Web interface**: Module management via browser (React + TypeScript)
- **Smart storage**: Tmpfs when available, ext4 image fallback
- **Native performance**: Written in C++ using modern Linux mount APIs

---

## Installation

1. Download ZIP from [Releases](https://github.com/KernelSU-Modules-Repo/hymo/releases)
2. Flash via KernelSU Manager
3. Reboot

---

## Building

```bash
./build.sh init      # Setup
./build.sh all       # Build all architectures
./build.sh package   # Create flashable ZIP
```

**Requirements**: CMake 3.22+, Android NDK r25+, Node.js (for WebUI)

---

## HymoFS Kernel Patch

For HymoFS mode support:

```bash
curl -LSs https://raw.githubusercontent.com/Anatdx/HymoFS/main/setup.sh | bash -s defconfig arch/arm64/configs/gki_defconfig
```

Detects kernel version (6.1/6.6/6.12) and applies patches automatically.

---

## CLI Usage

```bash
hymod mount                          # Mount modules
hymod modules                        # List modules
hymod set-mode <id> <mode>          # Set mount mode (auto/hymofs/overlay/magic/none)
hymod hymofs <on|off>               # Toggle HymoFS
hymod stealth <on|off>              # Toggle stealth mode
```

Config file: `/data/adb/hymo/config.toml`

---

## License

Apache License 2.0
