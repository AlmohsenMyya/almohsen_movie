import '../../../core/app_export.dart';

/// This class is used in the [seemoreseven_item_widget] screen.
class SeemoresevenItemModel {
  SeemoresevenItemModel({
    this.jallikatta,
    this.title,
    this.id,
  }) {
    jallikatta = jallikatta ?? Rx(ImageConstant.imgThumbnailImage20);
    title = title ?? Rx("Jallikatta");
    id = id ?? Rx("");
  }

  Rx<String>? jallikatta;

  Rx<String>? title;

  Rx<String>? id;
}
