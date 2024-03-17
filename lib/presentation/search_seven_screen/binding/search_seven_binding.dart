import 'package:almohsen_s_application14/presentation/search_seven_screen/controller/search_seven_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SearchSevenScreen.
///
/// This class ensures that the SearchSevenController is created when the
/// SearchSevenScreen is first loaded.
class SearchSevenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SearchSevenController());
  }
}
