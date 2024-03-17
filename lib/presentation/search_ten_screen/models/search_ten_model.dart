import '../../../core/app_export.dart';
import 'searchten_item_model.dart';

/// This class defines the variables used in the [search_ten_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SearchTenModel {
  Rx<List<SearchtenItemModel>> searchtenItemList = Rx([
    SearchtenItemModel(
        jallikatta: ImageConstant.imgThumbnailImage20.obs,
        title: "Jallikatta".obs),
    SearchtenItemModel(
        jallikatta: ImageConstant.imgThumbnailImage25.obs,
        title: "The Brave".obs),
    SearchtenItemModel(
        jallikatta: ImageConstant.imgThumbnailImage26.obs, title: "Helen".obs)
  ]);
}
