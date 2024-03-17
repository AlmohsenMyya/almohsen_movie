import 'package:almohsen_s_application14/presentation/detail_page_eleven_screen/controller/detail_page_eleven_controller.dart';
import 'package:get/get.dart';

/// A binding class for the DetailPageElevenScreen.
///
/// This class ensures that the DetailPageElevenController is created when the
/// DetailPageElevenScreen is first loaded.
class DetailPageElevenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DetailPageElevenController());
  }
}
