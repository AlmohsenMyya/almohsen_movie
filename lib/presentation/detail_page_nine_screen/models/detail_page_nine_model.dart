import 'chipview_item_model.dart';
import '../../../core/app_export.dart';
import 'movies1_item_model.dart';

/// This class defines the variables used in the [detail_page_nine_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class DetailPageNineModel {
  Rx<List<ChipviewItemModel>> chipviewItemList =
      Rx(List.generate(4, (index) => ChipviewItemModel()));

  Rx<List<Movies1ItemModel>> movies1ItemList = Rx([
    Movies1ItemModel(
        iONetflix: ImageConstant.imgThumbnailImage180x120.obs,
        title: "IO: Netflix".obs,
        title1: "In near future we must save earth".obs),
    Movies1ItemModel(
        iONetflix: ImageConstant.imgThumbnailImage7.obs,
        title: "I Kill Giants".obs,
        title1: "No more Surrender this time".obs),
    Movies1ItemModel(
        iONetflix: ImageConstant.imgThumbnailImage9.obs,
        title: "Angel has Fallen".obs,
        title1: "Loyalty under everything".obs)
  ]);
}
