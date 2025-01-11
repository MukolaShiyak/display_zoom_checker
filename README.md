# display_zoom_checker

[![pub package](https://img.shields.io/pub/v/display_zoom_checker.svg)](https://pub.dev/packages/display_zoom_checker)

A Flutter plugin for iOS and Android to determine if the display is zoomed in.

|             | Android | iOS     |
|-------------|---------|---------|
| **Support** | SDK 24+ | iOS 12+ |

 <p align="center">
 <img height=500 src="https://raw.githubusercontent.com/MukolaShiyak/display_zoom_checker/refs/heads/main/assets/display_zoom.jpg">


To use this plugin, add `display_zoom_checker` as a [dependency in your pubspec.yaml file](https://flutter.dev/platform-plugins/).

### Example

<?code-excerpt "lib/basic.dart (basic-example)"?>
```dart
import 'package:display_zoom_checker/display_zoom_checker.dart';

Future<bool> isDisplayZoomed() {
  return DisplayZoomChecker.isDisplayZoomed();
}
```

### Developer

- [Mykola Shyiak](https://github.com/MukolaShiyak)