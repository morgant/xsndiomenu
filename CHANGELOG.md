# CHANGELOG

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

### Added

* `xsndioicon` ([#1](https://github.com/morgant/xsndiomenu/issues/1)):
    * Monitors `sndioctl` for output level & mute status changes
    * Relaunches `wmlaunchbutton` with appropriate speaker volume/mute icon upon changes
* Updated README to link to [siosw](https://github.com/vext01/siosw) TUI utility

### Changed

* `Makefile`:
    * `install`, `uninstall`, `install-mlvwmrc-menuextra`, `uninstall-mlvwmrc-menuextra` targets to install/uninstall `xsndioicon` & MenuExtra ([#1](https://github.com/morgant/xsndiomenu/issues/1))

## [0.2.0] - 2024-01-13

### Added

* mlvwmrc Menu Extra:
    * Provides an icon in the MLVWM menu bar which will show the `xsndiomenu` when clicked on ([#1](https://github.com/morgant/xsndiomenu/issues/1))
* Makefile with `install`, `uninstall`, `install-mlvwmrc-menuextra`, `uninstall-mlvwmrc-menuextra` targets ([#1](https://github.com/morgant/xsndiomenu/issues/1))
* Added this CHANGELOG

### Changed

* Now requires `wmlaunchbutton` ([#1](https://github.com/morgant/xsndiomenu/issues/1))
* Updated README to document the new mlvwmrc MenuExtra & installation ([#1](https://github.com/morgant/xsndiomenu/issues/1))
* Updated copyright years

## [0.1.1] - 2023-12-01

### Fixed

* Fix for potential to parse incorrect `dmesg` line when determining an audio device's hardware device

## [0.1.0] - 2023-11-18

### Added

* `xsndiomenu`:
    * Lists all audio devices by hardware description, including:
        * Denotes which is the active audio server device
        * Supports switching active audio server device
    * For input & output:
        * Shows level (volume)
            * Supports setting level to min/max
            * Supports increasing/decreasing by 10%
        * Shows mute status
            * Supports toggling mute
    * For input, denotes whether audio recording is enabled in the kernel

[unreleased]: https://github.com/morgant/xsndiomenu/compare/0.2...main
[0.2.0]: https://github.com/morgant/xsndiomenu/compare/0.1.1...0.2
[0.1.1]: https://github.com/morgant/xsndiomenu/compare/0.1...0.1.1
[0.1.0]: https://github.com/morgant/xsndiomenu/releases/tag/0.1
