import 'package:almohsen_s_application14/presentation/detail_page_eight_screen/controller/detail_page_eight_controller.dart';
import 'package:get/get.dart';

/// A binding class for the DetailPageEightScreen.
///
/// This class ensures that the DetailPageEightController is created when the
/// DetailPageEightScreen is first loaded.
class DetailPageEightBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DetailPageEightController());
  }
}
