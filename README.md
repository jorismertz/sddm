## Usage

1. Ensure you have the [dependencies](#dependencies).
2. Clone this repository locally.
3. Go into the _src_ directory then copy the folder catppuccin-flavour (flavour is replaced with latte/frappe/macchiato/mocha).
4. Paste the folder to `/usr/share/sddm/themes/`
5. Edit the file in `/etc/sddm.conf/` and change the theme in there from whatever was before to catppuccin-flavour.

- If you don't have this file make one with `.conf` extension and make sure it has these two lines within the config:

```
[Theme]
Current=catppuccin-flavour
```

## Dependencies

### Arch Based OS

```bash
pacman -Syu qt5-graphicaleffects qt5-svg qt5-quickcontrols2
```

### Debian Based OS

```bash
apt install --no-install-recommends qml-module-qtquick-layouts qml-module-qtgraphicaleffects qml-module-qtquick-controls2 libqt5svg5
```

### Red Hat Based OS

```bash
dnf install qt5-qtgraphicaleffects qt5-qtquickcontrols2 qt5-qtsvg
```

### Solus OS

```bash
eopkg install qt5-graphicaleffects qt5-quickcontrols2 qt5-svg
```
