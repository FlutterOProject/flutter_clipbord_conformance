import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_clipbord_conformance/flutter_clipbord_conformance.dart';

void main() {
  const MethodChannel channel = MethodChannel('flutter_clipbord_conformance');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await FlutterClipbordConformance.platformVersion, '42');
  });
}
