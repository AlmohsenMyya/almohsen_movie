import '../../../core/app_export.dart';
import '../models/dashboard_container_model.dart';

/// A controller class for the DashboardContainerScreen.
///
/// This class manages the state of the DashboardContainerScreen, including the
/// current dashboardContainerModelObj
class DashboardContainerController extends GetxController {
  Rx<DashboardContainerModel> dashboardContainerModelObj =
      DashboardContainerModel().obs;

  @override
  void onReady() {
    Get.toNamed(
      AppRoutes.dashboardPage,
    );
    Get.toNamed(
      AppRoutes.accountFivePage,
    );
    Get.toNamed(
      AppRoutes.channelSixPage,
    );
    Get.toNamed(
      AppRoutes.exploreEightPage,
    );
  }
}
