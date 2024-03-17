import '../../../core/app_export.dart';
import 'movielist_item_model.dart';

/// This class defines the variables used in the [detail_page_twelve_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class DetailPageTwelveModel {
  Rx<List<MovielistItemModel>> movielistItemList = Rx([
    MovielistItemModel(
        iONetflix: ImageConstant.imgThumbnailImage180x120.obs,
        title: "IO: Netflix".obs,
        title1: "In near future we must save earth".obs),
    MovielistItemModel(
        iONetflix: ImageConstant.imgThumbnailImage7.obs,
        title: "I Kill Giants".obs,
        title1: "No more Surrender this time".obs),
    MovielistItemModel(
        iONetflix: ImageConstant.imgThumbnailImage9.obs,
        title: "Angel has Fallen".obs,
        title1: "Loyalty under everything".obs)
  ]);
}
