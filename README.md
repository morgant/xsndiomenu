# xsndiomenu
by Morgan Aldridge <morgant@makkintosshu.com>

## OVERVIEW

A simple menu utility to view & control [sndio](https://sndio.org/) devices & state under [OpenBSD](https://www.openbsd.org/). It is a wrapper around OpenBSD's [dmesg(8)](http://man.openbsd.org/dmesg), [sndioctl(1)](http://man.openbsd.org/sndioctl), and [sysctl(8)](http://man.openbsd.org/man8/sysctl.8) powered by [xmenu](https://github.com/phillbush/xmenu).

## FEATURES

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

## PREREQUISITES

* [xmenu](https://github.com/phillbush/xmenu)

## USAGE

`xsndiomenu`

## SIMILAR UTILITIES

You might want to check out these similar projects for controlling OpenBSD's sndiod(8) from X11:

* [sndiokeys](https://github.com/ratchov/sndiokeys)

## LICENSE

Released under the [MIT license](LICENSE).
