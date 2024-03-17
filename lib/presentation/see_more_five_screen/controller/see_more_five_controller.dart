import '../../../core/app_export.dart';
import '../models/see_more_five_model.dart';

/// A controller class for the SeeMoreFiveScreen.
///
/// This class manages the state of the SeeMoreFiveScreen, including the
/// current seeMoreFiveModelObj
class SeeMoreFiveController extends GetxController {
  Rx<SeeMoreFiveModel> seeMoreFiveModelObj = SeeMoreFiveModel().obs;
}
