import '../../../core/app_export.dart';
import '../models/detail_page_twelve_model.dart';

/// A controller class for the DetailPageTwelveScreen.
///
/// This class manages the state of the DetailPageTwelveScreen, including the
/// current detailPageTwelveModelObj
class DetailPageTwelveController extends GetxController {
  Rx<DetailPageTwelveModel> detailPageTwelveModelObj =
      DetailPageTwelveModel().obs;
}
