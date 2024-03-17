import 'package:almohsen_s_application14/presentation/explore_six_screen/controller/explore_six_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ExploreSixScreen.
///
/// This class ensures that the ExploreSixController is created when the
/// ExploreSixScreen is first loaded.
class ExploreSixBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ExploreSixController());
  }
}
