import 'package:almohsen_s_application14/presentation/explore_nine_screen/controller/explore_nine_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ExploreNineScreen.
///
/// This class ensures that the ExploreNineController is created when the
/// ExploreNineScreen is first loaded.
class ExploreNineBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ExploreNineController());
  }
}
