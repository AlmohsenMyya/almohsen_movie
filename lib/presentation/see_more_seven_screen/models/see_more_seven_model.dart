import '../../../core/app_export.dart';
import 'seemoreseven_item_model.dart';

/// This class defines the variables used in the [see_more_seven_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SeeMoreSevenModel {
  Rx<List<SeemoresevenItemModel>> seemoresevenItemList = Rx([
    SeemoresevenItemModel(
        jallikatta: ImageConstant.imgThumbnailImage20.obs,
        title: "Jallikatta".obs),
    SeemoresevenItemModel(
        jallikatta: ImageConstant.imgThumbnailImage25.obs,
        title: "The Brave".obs),
    SeemoresevenItemModel(
        jallikatta: ImageConstant.imgThumbnailImage26.obs, title: "Helen".obs),
    SeemoresevenItemModel(
        jallikatta: ImageConstant.imgThumbnailImage27.obs, title: "A1".obs),
    SeemoresevenItemModel(
        jallikatta: ImageConstant.imgThumbnailImage28.obs,
        title: "Captain Marvel".obs),
    SeemoresevenItemModel(
        jallikatta: ImageConstant.imgThumbnailImage24.obs,
        title: "Child’s Play".obs),
    SeemoresevenItemModel(
        jallikatta: ImageConstant.imgThumbnailImage12.obs,
        title: "Dark Phoenix".obs),
    SeemoresevenItemModel(
        jallikatta: ImageConstant.imgThumbnailImage30.obs, title: "Arana".obs)
  ]);
}
