import '../../../core/app_export.dart';
import '../models/detail_page_eleven_model.dart';

/// A controller class for the DetailPageElevenScreen.
///
/// This class manages the state of the DetailPageElevenScreen, including the
/// current detailPageElevenModelObj
class DetailPageElevenController extends GetxController {
  Rx<DetailPageElevenModel> detailPageElevenModelObj =
      DetailPageElevenModel().obs;
}
