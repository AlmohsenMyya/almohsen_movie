import 'package:almohsen_s_application14/presentation/detail_page_twelve_screen/controller/detail_page_twelve_controller.dart';
import 'package:get/get.dart';

/// A binding class for the DetailPageTwelveScreen.
///
/// This class ensures that the DetailPageTwelveController is created when the
/// DetailPageTwelveScreen is first loaded.
class DetailPageTwelveBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DetailPageTwelveController());
  }
}
