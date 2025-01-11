import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'display_zoom_checker_platform_interface.dart';

/// An implementation of [DisplayZoomCheckerPlatform] that uses method channels.
class MethodChannelDisplayZoomChecker extends DisplayZoomCheckerPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('display_zoom_checker');

  @override
  Future<bool> isDisplayZoomed() async {
    final isDisplayZoomed =
        await methodChannel.invokeMethod<bool>('isDisplayZoomed');
    return isDisplayZoomed ?? false;
  }
}
