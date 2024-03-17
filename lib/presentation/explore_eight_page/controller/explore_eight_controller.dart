import '../../../core/app_export.dart';
import '../models/explore_eight_model.dart';

/// A controller class for the ExploreEightPage.
///
/// This class manages the state of the ExploreEightPage, including the
/// current exploreEightModelObj
class ExploreEightController extends GetxController {
  ExploreEightController(this.exploreEightModelObj);

  Rx<ExploreEightModel> exploreEightModelObj;

  @override
  void onReady() {
    Get.toNamed(
      AppRoutes.exploreNineScreen,
    );
  }
}
