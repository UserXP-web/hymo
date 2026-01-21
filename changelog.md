## v2.0.0

Initial release.
* fix: add tags-ignore rule for version tags in build workflow
* fix: update changelog URL and change branch references from master to main
* Refactor HymoFS header and update UI components
* feat: implement user-defined hide rules management and UI
* 更新.gitlab-ci.yml文件
* Fix: Register unmountable paths for erofs and ext4 storage
* feat: add missing includes for set and sstream in main.cpp
* feat: enhance version command output with protocol and active modules details
* feat: add hymofs_enabled status output to main configuration display
* fix: remove unnecessary closing brace in realApi definition
* fix: update scanPartitionsFromModules to use destructuring for stdout
* feat: update partition scanning logic to use hymod for improved accuracy
* Refactor module scanning logic to improve partition candidate detection
* feat: add hymoFS enable configuration option and apply it in main
* ci: remove repository condition for Telegram upload step
* Refactor HymoFS to support both ioctl and syscall modes
* feat: add stealth and HymoFS enable commands, update protocol version to 11
* ui: round storage percentage
* ci: append short commit hash to artifact filenames
* style(webui): hide vertical scrollbars on all pages
* fix(webui): resolve strict type errors from dependency updates
* docs: sync READMEs with YukiSU merger info & build optimization
* build(deps): bump react and @types/react in /webui (#5)
* Refactor: project-wide comment cleanup and avc_spoof removal
* fix: update CMakeLists and build script for improved architecture handling and NDK detection
* fix: update Telegram upload script to remove unnecessary quotes around file path
* fix: improve WebUI build process and package target commands for clarity and efficiency
* fix: enhance package target to ensure build directory initialization and conditional webui build
* fix: update package target commands for improved error handling and silent output
* fix: improve package target to handle missing files gracefully
* fix: extract module version during build process and update NDK path handling
* fix: adds Telegram upload step to CI
* Update GitHub Actions workflows for CMake build system
* Initial commit - Hymo KernelSU Module v1.5.3