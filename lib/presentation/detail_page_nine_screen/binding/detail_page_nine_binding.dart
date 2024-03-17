import 'package:almohsen_s_application14/presentation/detail_page_nine_screen/controller/detail_page_nine_controller.dart';
import 'package:get/get.dart';

/// A binding class for the DetailPageNineScreen.
///
/// This class ensures that the DetailPageNineController is created when the
/// DetailPageNineScreen is first loaded.
class DetailPageNineBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DetailPageNineController());
  }
}
