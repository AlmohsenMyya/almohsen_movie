import 'package:almohsen_s_application14/presentation/search_eight_screen/controller/search_eight_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SearchEightScreen.
///
/// This class ensures that the SearchEightController is created when the
/// SearchEightScreen is first loaded.
class SearchEightBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SearchEightController());
  }
}
