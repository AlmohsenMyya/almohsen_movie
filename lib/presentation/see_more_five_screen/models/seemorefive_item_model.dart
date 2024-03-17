import '../../../core/app_export.dart';

/// This class is used in the [seemorefive_item_widget] screen.
class SeemorefiveItemModel {
  SeemorefiveItemModel({
    this.darkTower,
    this.title,
    this.id,
  }) {
    darkTower = darkTower ?? Rx(ImageConstant.imgThumbnailImage140x98);
    title = title ?? Rx("Dark Tower");
    id = id ?? Rx("");
  }

  Rx<String>? darkTower;

  Rx<String>? title;

  Rx<String>? id;
}
