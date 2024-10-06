
import 'out_pip_platform_interface.dart';

class OutPip {
  Future<String?> getPlatformVersion() {
    return OutPipPlatform.instance.getPlatformVersion();
  }
}
