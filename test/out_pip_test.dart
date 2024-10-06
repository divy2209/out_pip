import 'package:flutter_test/flutter_test.dart';
import 'package:out_pip/out_pip.dart';
import 'package:out_pip/out_pip_platform_interface.dart';
import 'package:out_pip/out_pip_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockOutPipPlatform
    with MockPlatformInterfaceMixin
    implements OutPipPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final OutPipPlatform initialPlatform = OutPipPlatform.instance;

  test('$MethodChannelOutPip is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelOutPip>());
  });

  test('getPlatformVersion', () async {
    OutPip outPipPlugin = OutPip();
    MockOutPipPlatform fakePlatform = MockOutPipPlatform();
    OutPipPlatform.instance = fakePlatform;

    expect(await outPipPlugin.getPlatformVersion(), '42');
  });
}
