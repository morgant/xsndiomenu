# xsndiomenu
by Morgan Aldridge <morgant@makkintosshu.com>

## OVERVIEW

A simple menu utility to view & control [sndio](https://sndio.org/) devices & state under [OpenBSD](https://www.openbsd.org/). It is a wrapper around OpenBSD's [dmesg(8)](http://man.openbsd.org/dmesg), [sndioctl(1)](http://man.openbsd.org/sndioctl), and [sysctl(8)](http://man.openbsd.org/man8/sysctl.8) powered by [xmenu](https://github.com/phillbush/xmenu).

It is intended for, but not limited to, use with the [MLVWM](https://github.com/morgant/mlvwm) window manager, specifically the [mlvwmrc](https://github.com/morgant/mlvwmrc) configurations, as a "Menu Extra" swallowed into the menu bar.

**NOTE:** _This is currently a standalone X11 application and does not integrate with the system tray._

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

### Example Screenshot

![Screenshot of `xsndiomenu` showing three audio devices (the second being the active server), output level (100%) and mute option, and input level (100%; recording disabled in the kernel) and mute option](xsndiomenu.png)

## PREREQUISITES

* [wmlaunchbutton](https://github.com/phillbush/wmlaunchbutton)
* [xmenu](https://github.com/phillbush/xmenu)

## INSTALLATION

```
make install
```

### MLVWM Menu Extra

Install the Menu Extra in your `~/.mlvwm/MenuExtras/` directory by running:

```
make install-mlvwmrc-menuextra
```

Next, edit your `~/.mlvwm/MenuBar` configuration file to add the following line in the appropriate "Menu Extras" section:

```
Read .mlvwm/MenuExtras/xsndiomenu
```

Finally, restart `mlvwm`.

## USAGE

You can manually execute `xsndiomenu` in any way you prefer, which will show the menu at your cursor.

If installed as an MLVWM MenuExtra, you can click the icon in your menu bar.

## SIMILAR UTILITIES

You might want to check out these similar projects for controlling OpenBSD's sndiod(8) from X11:

* [sndiokeys](https://github.com/ratchov/sndiokeys)
* [tray-app](https://www.bsdua.org/tray-app.html) (specifically `/usr/local/libexec/tray-app/sound`; for use with a system tray application)

## CHANGE LOG

See [CHANGELOG.md](CHANGELOG.md) for detailed version history.

## LICENSE

Mark James' [FamFamFam Silk Icons](https://github.com/markjames/famfamfam-silk-icons) licensed under the [Creative Commons Attribution 2.5 License](http://creativecommons.org/licenses/by/2.5/).

Released under the [MIT license](LICENSE).
