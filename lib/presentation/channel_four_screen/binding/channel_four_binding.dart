import 'package:almohsen_s_application14/presentation/channel_four_screen/controller/channel_four_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ChannelFourScreen.
///
/// This class ensures that the ChannelFourController is created when the
/// ChannelFourScreen is first loaded.
class ChannelFourBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ChannelFourController());
  }
}
