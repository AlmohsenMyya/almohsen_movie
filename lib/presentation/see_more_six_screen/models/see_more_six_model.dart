import '../../../core/app_export.dart';
import 'seemoresix_item_model.dart';

/// This class defines the variables used in the [see_more_six_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SeeMoreSixModel {
  Rx<List<SeemoresixItemModel>> seemoresixItemList = Rx([
    SeemoresixItemModel(
        rodioflash: ImageConstant.imgThumbnailImage140x90.obs,
        title: "Rodioflash".obs),
    SeemoresixItemModel(
        rodioflash: ImageConstant.imgThumbnailImage.obs,
        title: "The Perfection".obs),
    SeemoresixItemModel(
        rodioflash: ImageConstant.imgThumbnailImage1.obs,
        title: "Turner & Hooch".obs),
    SeemoresixItemModel(
        rodioflash: ImageConstant.imgThumbnailImage20.obs,
        title: "Jallikatta".obs),
    SeemoresixItemModel(
        rodioflash: ImageConstant.imgThumbnailImage21.obs,
        title: "The Hobbit".obs),
    SeemoresixItemModel(
        rodioflash: ImageConstant.imgThumbnailImage12.obs,
        title: "Dark Phoenix".obs),
    SeemoresixItemModel(
        rodioflash: ImageConstant.imgThumbnailImage22.obs,
        title: "Ghost Writer".obs),
    SeemoresixItemModel(
        rodioflash: ImageConstant.imgThumbnailImage24.obs,
        title: "Child’s Play".obs)
  ]);
}
