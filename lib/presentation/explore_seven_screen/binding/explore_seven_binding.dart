import 'package:almohsen_s_application14/presentation/explore_seven_screen/controller/explore_seven_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ExploreSevenScreen.
///
/// This class ensures that the ExploreSevenController is created when the
/// ExploreSevenScreen is first loaded.
class ExploreSevenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ExploreSevenController());
  }
}
