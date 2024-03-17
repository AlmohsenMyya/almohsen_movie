import 'package:almohsen_s_application14/presentation/search_ten_screen/controller/search_ten_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SearchTenScreen.
///
/// This class ensures that the SearchTenController is created when the
/// SearchTenScreen is first loaded.
class SearchTenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SearchTenController());
  }
}
