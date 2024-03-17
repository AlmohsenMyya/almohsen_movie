import '../../../core/app_export.dart';

/// This class is used in the [specialslist5_item_widget] screen.
class Specialslist5ItemModel {
  Specialslist5ItemModel({
    this.drama,
    this.drama1,
    this.id,
  }) {
    drama = drama ?? Rx(ImageConstant.imgThumbnailImage60x90);
    drama1 = drama1 ?? Rx("Drama");
    id = id ?? Rx("");
  }

  Rx<String>? drama;

  Rx<String>? drama1;

  Rx<String>? id;
}
