import 'package:almohsen_s_application14/presentation/search_six_screen/controller/search_six_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SearchSixScreen.
///
/// This class ensures that the SearchSixController is created when the
/// SearchSixScreen is first loaded.
class SearchSixBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SearchSixController());
  }
}
