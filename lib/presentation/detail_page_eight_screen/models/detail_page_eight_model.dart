import '../../../core/app_export.dart';
import 'movies4_item_model.dart';

/// This class defines the variables used in the [detail_page_eight_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class DetailPageEightModel {
  Rx<List<Movies4ItemModel>> movies4ItemList = Rx([
    Movies4ItemModel(
        iONetflix: ImageConstant.imgThumbnailImage180x120.obs,
        title: "IO: Netflix".obs,
        title1: "In near future we must save earth".obs),
    Movies4ItemModel(
        iONetflix: ImageConstant.imgThumbnailImage7.obs,
        title: "I Kill Giants".obs,
        title1: "No more Surrender this time".obs),
    Movies4ItemModel(
        iONetflix: ImageConstant.imgThumbnailImage9.obs,
        title: "Angel has Fallen".obs,
        title1: "Loyalty under everything".obs)
  ]);
}
