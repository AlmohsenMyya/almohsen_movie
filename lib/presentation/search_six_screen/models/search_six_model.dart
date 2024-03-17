import '../../../core/app_export.dart';
import 'movieslist_item_model.dart';
import 'movies6_item_model.dart';
import 'movies7_item_model.dart';

/// This class defines the variables used in the [search_six_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SearchSixModel {
  Rx<List<MovieslistItemModel>> movieslistItemList = Rx([
    MovieslistItemModel(
        turnerHooch: ImageConstant.imgThumbnailImage1.obs,
        title: "Turner & Hooch".obs,
        title1: "Sub-Title".obs),
    MovieslistItemModel(
        turnerHooch: ImageConstant.imgThumbnailImage26.obs,
        title: "Hellen".obs,
        title1: "What a happy Family".obs),
    MovieslistItemModel(
        turnerHooch: ImageConstant.imgThumbnailImage24.obs,
        title: "Child’s Play".obs,
        title1: "Sub-Title".obs)
  ]);

  Rx<List<Movies6ItemModel>> movies6ItemList = Rx([
    Movies6ItemModel(
        turnerHooch: ImageConstant.imgThumbnailImage1.obs,
        title: "Turner & Hooch".obs,
        title1: "Sub-Title".obs),
    Movies6ItemModel(
        turnerHooch: ImageConstant.imgThumbnailImage26.obs,
        title: "Hellen".obs,
        title1: "What a happy Family".obs),
    Movies6ItemModel(
        turnerHooch: ImageConstant.imgThumbnailImage24.obs,
        title: "Child’s Play".obs,
        title1: "Sub-Title".obs)
  ]);

  Rx<List<Movies7ItemModel>> movies7ItemList = Rx([
    Movies7ItemModel(
        turnerHooch: ImageConstant.imgThumbnailImage1.obs,
        title: "Turner & Hooch".obs,
        title1: "Sub-Title".obs),
    Movies7ItemModel(
        turnerHooch: ImageConstant.imgThumbnailImage26.obs,
        title: "Hellen".obs,
        title1: "What a happy Family".obs),
    Movies7ItemModel(
        turnerHooch: ImageConstant.imgThumbnailImage24.obs,
        title: "Child’s Play".obs,
        title1: "Sub-Title".obs)
  ]);
}
