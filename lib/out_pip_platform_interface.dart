import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'out_pip_method_channel.dart';

abstract class OutPipPlatform extends PlatformInterface {
  /// Constructs a OutPipPlatform.
  OutPipPlatform() : super(token: _token);

  static final Object _token = Object();

  static OutPipPlatform _instance = MethodChannelOutPip();

  /// The default instance of [OutPipPlatform] to use.
  ///
  /// Defaults to [MethodChannelOutPip].
  static OutPipPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [OutPipPlatform] when
  /// they register themselves.
  static set instance(OutPipPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
