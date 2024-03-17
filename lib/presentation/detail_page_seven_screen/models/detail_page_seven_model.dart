import '../../../core/app_export.dart';
import 'movies_item_model.dart';

/// This class defines the variables used in the [detail_page_seven_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class DetailPageSevenModel {
  Rx<List<MoviesItemModel>> moviesItemList = Rx([
    MoviesItemModel(
        iONetflix: ImageConstant.imgThumbnailImage180x120.obs,
        title: "IO: Netflix".obs,
        title1: "In near future we must save earth".obs),
    MoviesItemModel(
        iONetflix: ImageConstant.imgThumbnailImage7.obs,
        title: "I Kill Giants".obs,
        title1: "No more Surrender this time".obs),
    MoviesItemModel(
        iONetflix: ImageConstant.imgThumbnailImage9.obs,
        title: "Angel has Fallen".obs,
        title1: "Loyalty under everything".obs)
  ]);
}
