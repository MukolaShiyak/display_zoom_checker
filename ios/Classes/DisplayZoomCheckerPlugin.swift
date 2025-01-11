import Flutter
import UIKit

public class DisplayZoomCheckerPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "display_zoom_checker", binaryMessenger: registrar.messenger())
    let instance = DisplayZoomCheckerPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    switch call.method {
    case "isDisplayZoomed":
      result(UIScreen.main.nativeScale>UIScreen.main.scale)
    default:
      result(FlutterMethodNotImplemented)
    }
  }
}
