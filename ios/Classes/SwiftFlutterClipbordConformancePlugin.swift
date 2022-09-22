import Flutter
import UIKit

public class SwiftFlutterClipbordConformancePlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "flutter_clipbord_conformance", binaryMessenger: registrar.messenger())
    let instance = SwiftFlutterClipbordConformancePlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    result("iOS " + UIDevice.current.systemVersion)
  }
}
