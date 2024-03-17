import '../../../core/app_export.dart';
import 'searchnine_item_model.dart';

/// This class defines the variables used in the [search_nine_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SearchNineModel {
  Rx<List<SearchnineItemModel>> searchnineItemList = Rx([
    SearchnineItemModel(
        jallikatta: ImageConstant.imgThumbnailImage20.obs,
        title: "Jallikatta".obs),
    SearchnineItemModel(
        jallikatta: ImageConstant.imgThumbnailImage25.obs,
        title: "The Brave".obs),
    SearchnineItemModel(
        jallikatta: ImageConstant.imgThumbnailImage26.obs, title: "Helen".obs),
    SearchnineItemModel(
        jallikatta: ImageConstant.imgThumbnailImage27.obs, title: "A1".obs),
    SearchnineItemModel(
        jallikatta: ImageConstant.imgThumbnailImage28.obs,
        title: "Captain Marvel".obs),
    SearchnineItemModel(
        jallikatta: ImageConstant.imgThumbnailImage24.obs,
        title: "Child’s Play".obs)
  ]);
}
