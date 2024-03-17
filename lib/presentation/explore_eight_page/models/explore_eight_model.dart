import '../../../core/app_export.dart';
import 'specials1_item_model.dart';
import 'exploregrid1_item_model.dart';

/// This class defines the variables used in the [explore_eight_page],
/// and is typically used to hold data that is passed between different parts of the application.
class ExploreEightModel {
  Rx<List<Specials1ItemModel>> specials1ItemList = Rx([
    Specials1ItemModel(
        drama: ImageConstant.imgThumbnailImage60x90.obs, drama1: "Drama".obs),
    Specials1ItemModel(
        drama: ImageConstant.imgThumbnailImage14.obs, drama1: "Action".obs),
    Specials1ItemModel(
        drama: ImageConstant.imgThumbnailImage15.obs, drama1: "Thriller".obs),
    Specials1ItemModel(
        drama: ImageConstant.imgThumbnailImage16.obs, drama1: "Drama".obs)
  ]);

  Rx<List<Exploregrid1ItemModel>> exploregrid1ItemList = Rx([
    Exploregrid1ItemModel(
        io: ImageConstant.imgThumbnailImage180x120.obs,
        title: "IO".obs,
        title1: "No Christmas For You".obs),
    Exploregrid1ItemModel(
        io: ImageConstant.imgThumbnailImage7.obs,
        title: "I Kill Giants".obs,
        title1: "As long we fight back, we have…".obs),
    Exploregrid1ItemModel(
        io: ImageConstant.imgThumbnailImage9.obs,
        title: "Angel has Fallen".obs,
        title1: "Sub-Title".obs),
    Exploregrid1ItemModel(
        io: ImageConstant.imgThumbnailImage12.obs,
        title: "Title".obs,
        title1: "As long we fight …".obs)
  ]);
}
