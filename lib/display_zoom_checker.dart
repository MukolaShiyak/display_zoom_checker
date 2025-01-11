import 'display_zoom_checker_platform_interface.dart';

class DisplayZoomChecker {
  static Future<bool> isDisplayZoomed() {
    return DisplayZoomCheckerPlatform.instance.isDisplayZoomed();
  }
}
