# Mickey's Homebrew Formulae

```terminal
$ brew tap mickeyl/formulae
$ brew install <formula>
$ brew install --cask <cask>
```

## Currently On Tap

### Public Formulae (No Private Credentials Required)

- **[Blink1][10]** (`blink1-swift`):
  Control a ThingM blink(1) USB RGB LED from macOS.
- **[CAMouflage][8]**:
  Mock and passthrough camera input for the iOS Simulator. For macOS.
- **[core-bluetooth-tool][1]**:
  A command line tool for Bluetooth Low Energy (BLE) devices. For macOS.
- **[ecuconnect-tool][2]**:
  ECU Connection Tool. For Linux and macOS.
- **[ELMterm][4]**:
  Smart terminal for ELM327-compatible diagnostics. For macOS.
- **[ImpossiBLE][5]**:
  Real BLE hardware access from the iOS Simulator. For macOS.
- **[lsaudio][9]**:
  Inspect and control processes that play or record audio. For macOS.
- **[lsusd][6]**:
  List USB devices with their associated USB metadata. For Linux and macOS.
- **[swift-repl][7]**:
  Launch a Swift REPL with modules from local Swift packages. For macOS and Linux.

### Casks

- **[Blink1Bar][10]** (`blink1bar`):
  Native macOS 26 menu-bar app for driving a ThingM blink(1).
- **[LSAudio for macOS][9]** (`lsaudio-menubar`):
  Native macOS 26 menu-bar app for inspecting and controlling processes that
  play or record audio.
- **[LSUSD for macOS][6]** (`lsusd-menubar`):
  Native macOS 26 menu-bar app for inspecting USB devices, topology, serial
  devices, and connection events.

### Private Formulae (Require Non-Public Access)

- **[ecumulator-py][3]**:
  ECU emulation and automotive diagnostic tooling. For Linux and macOS.
  Requires access to private GitLab repositories over SSH.

## License

[The Unlicense](http://unlicense.org)

## Contact

mickeyl ([@mickeyl](https://twitter.com/DrMickeyLauer))

[1]: https://github.com/mickeyl/core-bluetooth-tool
[2]: https://github.com/Automotive-Swift/Swift-CANyonero
[3]: https://gitlab.com/a11086/ECumulator.py
[4]: https://github.com/Automotive-Swift/ELMterm
[5]: https://github.com/mickeyl/ImpossiBLE
[6]: https://github.com/mickeyl/lsusd
[7]: https://github.com/mickeyl/swift-repl
[8]: https://github.com/mickeyl/CAMouflage
[9]: https://github.com/mickeyl/lsaudio
[10]: https://github.com/mickeyl/Blink1
