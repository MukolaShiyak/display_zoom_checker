import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'display_zoom_checker_method_channel.dart';

abstract class DisplayZoomCheckerPlatform extends PlatformInterface {
  /// Constructs a DisplayZoomCheckerPlatform.
  DisplayZoomCheckerPlatform() : super(token: _token);

  static final Object _token = Object();

  static DisplayZoomCheckerPlatform _instance =
      MethodChannelDisplayZoomChecker();

  /// The default instance of [DisplayZoomCheckerPlatform] to use.
  ///
  /// Defaults to [MethodChannelDisplayZoomChecker].
  static DisplayZoomCheckerPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [DisplayZoomCheckerPlatform] when
  /// they register themselves.
  static set instance(DisplayZoomCheckerPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<bool> isDisplayZoomed() {
    throw UnimplementedError('isDisplayZoomed() has not been implemented.');
  }
}
