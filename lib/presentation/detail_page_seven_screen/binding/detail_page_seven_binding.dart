import 'package:almohsen_s_application14/presentation/detail_page_seven_screen/controller/detail_page_seven_controller.dart';
import 'package:get/get.dart';

/// A binding class for the DetailPageSevenScreen.
///
/// This class ensures that the DetailPageSevenController is created when the
/// DetailPageSevenScreen is first loaded.
class DetailPageSevenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DetailPageSevenController());
  }
}
