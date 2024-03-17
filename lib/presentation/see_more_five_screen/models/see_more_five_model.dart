import '../../../core/app_export.dart';
import 'seemorefive_item_model.dart';

/// This class defines the variables used in the [see_more_five_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SeeMoreFiveModel {
  Rx<List<SeemorefiveItemModel>> seemorefiveItemList = Rx([
    SeemorefiveItemModel(
        darkTower: ImageConstant.imgThumbnailImage140x98.obs,
        title: "Dark Tower".obs),
    SeemorefiveItemModel(
        darkTower: ImageConstant.imgThumbnailImage17.obs,
        title: "Beauty and Beast".obs),
    SeemorefiveItemModel(
        darkTower: ImageConstant.imgThumbnailImage18.obs,
        title: "The way Back".obs),
    SeemorefiveItemModel(
        darkTower: ImageConstant.imgThumbnailImage.obs,
        title: "The Perfection".obs),
    SeemorefiveItemModel(
        darkTower: ImageConstant.imgThumbnailImage140x90.obs,
        title: "Radioflash".obs),
    SeemorefiveItemModel(
        darkTower: ImageConstant.imgThumbnailImage1.obs,
        title: "Turner & Hooch".obs),
    SeemorefiveItemModel(
        darkTower: ImageConstant.imgThumbnailImage19.obs,
        title: "Encounter".obs),
    SeemorefiveItemModel(
        darkTower: ImageConstant.imgThumbnailImage12.obs,
        title: "Dark Phoenix".obs),
    SeemorefiveItemModel(
        darkTower: ImageConstant.imgThumbnailImage13.obs,
        title: "Pirates of Caribbean".obs)
  ]);
}
