import '../../../core/app_export.dart';
import 'searchgrid_item_model.dart';
import 'chipview2_item_model.dart';

/// This class defines the variables used in the [search_seven_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SearchSevenModel {
  Rx<List<SearchgridItemModel>> searchgridItemList = Rx([
    SearchgridItemModel(
        jallikatta: ImageConstant.imgThumbnailImage20.obs,
        title: "Jallikatta".obs),
    SearchgridItemModel(
        jallikatta: ImageConstant.imgThumbnailImage25.obs,
        title: "The Brave".obs),
    SearchgridItemModel(
        jallikatta: ImageConstant.imgThumbnailImage26.obs, title: "Helen".obs),
    SearchgridItemModel(
        jallikatta: ImageConstant.imgThumbnailImage27.obs, title: "A1".obs),
    SearchgridItemModel(
        jallikatta: ImageConstant.imgThumbnailImage28.obs,
        title: "Captain Marvel".obs),
    SearchgridItemModel(
        jallikatta: ImageConstant.imgThumbnailImage24.obs,
        title: "Child’s Play".obs)
  ]);

  Rx<List<Chipview2ItemModel>> chipview2ItemList =
      Rx(List.generate(4, (index) => Chipview2ItemModel()));
}
