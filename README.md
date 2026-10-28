<div align="center">
  <img src="images/kleo2_revised.png" alt="Kleopatra for macOS" width="800">

  <p><strong>KDE Kleopatra for macOS, built with Homebrew</strong></p>
</div>

Kleopatra is KDE's certificate manager and graphical front end for GnuPG: create and manage OpenPGP and S/MIME keys, encrypt, decrypt, sign and verify files and text.

This tap builds **Kleopatra 26.08.2** on **Qt 6** and **KDE Frameworks 6.31** from source, natively for your Mac's architecture (tested on Apple Silicon; Intel should work but is untested), and adds patches that make it look and behave like a Mac app.

> This is an updated fork of [algertc/homebrew-kleopatra4mac](https://github.com/algertc/homebrew-kleopatra4mac), which packaged Kleopatra 22.07 on Qt 5. All credit for the original port goes there.

## Install

```sh
brew tap giorgiobrullo/kleopatra4mac
brew install kleopatra
```

The formula is also available from [giorgiobrullo/homebrew-tap](https://github.com/giorgiobrullo/homebrew-tap) as `giorgiobrullo/tap/kleopatra`.

The first install compiles Kleopatra together with the KDE libraries it needs that Homebrew does not ship, so it takes a while (around half an hour on a recent Mac).

If you had the old Qt 5 formula installed, remove it first with `brew uninstall kleopatra`. D-Bus is no longer needed, so `brew services start dbus` is not part of the setup any more.

## After installing

Link the app into `/Applications` so it shows up in Launchpad and Spotlight:

```sh
ln -sfn "$(brew --prefix kleopatra)/Applications/KDE/kleopatra.app" /Applications/Kleopatra.app
```

To type passphrases into a native macOS dialog, make GnuPG use `pinentry-mac` (installed as a dependency):

```sh
echo "pinentry-program $(brew --prefix pinentry-mac)/bin/pinentry-mac" >> ~/.gnupg/gpg-agent.conf
gpgconf --kill gpg-agent
```

## What the macOS patches change

The patches in [`patches/`](patches) only affect macOS builds and are applied on top of the upstream release:

- **Window and toolbar**: unified title bar and toolbar, AppKit-sized labels, SF Symbols instead of KDE's Breeze icons, Finder-style tab bar, alternating row colors.
- **Menus**: no Settings menu (Settings…, keyboard shortcuts and language live in the application menu, toolbar options in View), ⌘, for Settings, native pop-up and context menus, the standard macOS About panel.
- **Dialogs**: macOS button order with the default button on the right, no icons on push buttons, native pull-down buttons and text fields, a toolbar customization sheet.
- **Colors**: light and dark mode follow the system, and KDE's positive/negative highlights use Apple's system colors.
- **Fixes**: proper bundle identifier and version, so macOS can remember the app's permissions; layout gaps and button spacing that only showed up with the macOS style.

## Credits

- [Kleopatra](https://apps.kde.org/kleopatra/) by the KDE and Gpg4win developers.
- [kleopatra4mac](https://github.com/algertc/homebrew-kleopatra4mac) by algertc, the original Homebrew port this fork builds on.

## License

GPL-2.0, like Kleopatra itself. See [LICENSE.txt](LICENSE.txt).
