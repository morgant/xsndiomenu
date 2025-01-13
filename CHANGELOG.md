# CHANGELOG

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

### Added

* mlvwmrc Menu Extra:
    * Provides an icon in the MLVWM menu bar which will show the `xsndiomenu` when clicked on
* Makefile with `install`, `uninstall`, `install-mlvwmrc-menuextra`, `uninstall-mlvwmrc-menuextra` targets
* Added this CHANGELOG

### Changed:

* Now requires `wmlaunchbutton`
* Updated README to document the new mlvwmrc MenuExtra & installation
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

[unreleased]: https://github.com/morgant/xsndiomenu/compare/0.1.1...main
[0.1.1]: https://github.com/morgant/xsndiomenu/compare/0.1...0.1.1
[0.1.0]: https://github.com/morgant/xsndiomenu/releases/tag/0.1
