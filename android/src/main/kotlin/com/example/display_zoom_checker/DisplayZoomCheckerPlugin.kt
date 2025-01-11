package com.example.display_zoom_checker

import android.content.res.Resources
import android.util.DisplayMetrics

import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.MethodCallHandler
import io.flutter.plugin.common.MethodChannel.Result


/** DisplayZoomCheckerPlugin */
class DisplayZoomCheckerPlugin: FlutterPlugin, MethodCallHandler {
  private lateinit var channel : MethodChannel

  override fun onAttachedToEngine(flutterPluginBinding: FlutterPlugin.FlutterPluginBinding) {
    channel = MethodChannel(flutterPluginBinding.binaryMessenger, "display_zoom_checker")
    channel.setMethodCallHandler(this)
  }

  override fun onMethodCall(call: MethodCall, result: Result) {
    if (call.method == "isDisplayZoomed") {
      val displayMetrics = Resources.getSystem().displayMetrics
      val isZoomed = displayMetrics.densityDpi > DisplayMetrics.DENSITY_DEVICE_STABLE

      result.success(isZoomed)
    } else {
      result.notImplemented()
    }
  }

  override fun onDetachedFromEngine(binding: FlutterPlugin.FlutterPluginBinding) {
    channel.setMethodCallHandler(null)
  }
}
