import '../../../core/app_export.dart';
import '../models/detail_page_seven_model.dart';

/// A controller class for the DetailPageSevenScreen.
///
/// This class manages the state of the DetailPageSevenScreen, including the
/// current detailPageSevenModelObj
class DetailPageSevenController extends GetxController {
  Rx<DetailPageSevenModel> detailPageSevenModelObj = DetailPageSevenModel().obs;

  @override
  void onReady() {
    Get.toNamed(
      AppRoutes.channelFourScreen,
    );
    Get.toNamed(
      AppRoutes.detailPageNineScreen,
    );
  }
}
