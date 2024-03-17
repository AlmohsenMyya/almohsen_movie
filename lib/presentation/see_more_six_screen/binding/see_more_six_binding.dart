import 'package:almohsen_s_application14/presentation/see_more_six_screen/controller/see_more_six_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SeeMoreSixScreen.
///
/// This class ensures that the SeeMoreSixController is created when the
/// SeeMoreSixScreen is first loaded.
class SeeMoreSixBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SeeMoreSixController());
  }
}
