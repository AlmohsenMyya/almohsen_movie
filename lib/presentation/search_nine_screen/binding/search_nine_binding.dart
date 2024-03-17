import 'package:almohsen_s_application14/presentation/search_nine_screen/controller/search_nine_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SearchNineScreen.
///
/// This class ensures that the SearchNineController is created when the
/// SearchNineScreen is first loaded.
class SearchNineBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SearchNineController());
  }
}
