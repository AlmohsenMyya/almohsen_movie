import '../../../core/app_export.dart';

/// This class is used in the [specialslist2_item_widget] screen.
class Specialslist2ItemModel {
  Specialslist2ItemModel({
    this.image,
    this.title,
    this.id,
  }) {
    image = image ?? Rx(ImageConstant.imgThumbnailImage3);
    title = title ?? Rx("Jumanji The Next Level");
    id = id ?? Rx("");
  }

  Rx<String>? image;

  Rx<String>? title;

  Rx<String>? id;
}
