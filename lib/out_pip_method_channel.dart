import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'out_pip_platform_interface.dart';

/// An implementation of [OutPipPlatform] that uses method channels.
class MethodChannelOutPip extends OutPipPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('out_pip');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
