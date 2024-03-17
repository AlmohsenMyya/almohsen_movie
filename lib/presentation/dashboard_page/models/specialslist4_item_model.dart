import '../../../core/app_export.dart';

/// This class is used in the [specialslist4_item_widget] screen.
class Specialslist4ItemModel {
  Specialslist4ItemModel({
    this.lukas,
    this.title,
    this.id,
  }) {
    lukas = lukas ?? Rx(ImageConstant.imgThumbnailImage11);
    title = title ?? Rx("Lukas");
    id = id ?? Rx("");
  }

  Rx<String>? lukas;

  Rx<String>? title;

  Rx<String>? id;
}
