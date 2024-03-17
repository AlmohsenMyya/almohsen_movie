import '../../../core/app_export.dart';
import 'specials2_item_model.dart';
import 'explorenine_item_model.dart';

/// This class defines the variables used in the [explore_nine_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ExploreNineModel {
  Rx<List<Specials2ItemModel>> specials2ItemList = Rx([
    Specials2ItemModel(
        drama: ImageConstant.imgThumbnailImage60x90.obs, drama1: "Drama".obs),
    Specials2ItemModel(
        drama: ImageConstant.imgThumbnailImage14.obs, drama1: "Action".obs),
    Specials2ItemModel(
        drama: ImageConstant.imgThumbnailImage15.obs, drama1: "Thriller".obs),
    Specials2ItemModel(
        drama: ImageConstant.imgThumbnailImage16.obs, drama1: "Drama".obs)
  ]);

  Rx<List<ExplorenineItemModel>> explorenineItemList = Rx([
    ExplorenineItemModel(
        io: ImageConstant.imgThumbnailImage180x120.obs,
        title: "IO".obs,
        title1: "No Christmas For You".obs),
    ExplorenineItemModel(
        io: ImageConstant.imgThumbnailImage7.obs,
        title: "I Kill Giants".obs,
        title1: "As long we fight back, we have…".obs),
    ExplorenineItemModel(
        io: ImageConstant.imgThumbnailImage9.obs,
        title: "Angel has Fallen".obs,
        title1: "Sub-Title".obs),
    ExplorenineItemModel(
        io: ImageConstant.imgThumbnailImage12.obs,
        title: "Title".obs,
        title1: "As long we fight …".obs)
  ]);
}
