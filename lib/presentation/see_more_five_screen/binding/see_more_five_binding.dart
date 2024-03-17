import 'package:almohsen_s_application14/presentation/see_more_five_screen/controller/see_more_five_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SeeMoreFiveScreen.
///
/// This class ensures that the SeeMoreFiveController is created when the
/// SeeMoreFiveScreen is first loaded.
class SeeMoreFiveBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SeeMoreFiveController());
  }
}
