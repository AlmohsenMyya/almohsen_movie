import 'package:almohsen_s_application14/presentation/channel_five_screen/controller/channel_five_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ChannelFiveScreen.
///
/// This class ensures that the ChannelFiveController is created when the
/// ChannelFiveScreen is first loaded.
class ChannelFiveBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ChannelFiveController());
  }
}
