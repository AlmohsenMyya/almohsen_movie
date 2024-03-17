import '../../../core/app_export.dart';

/// This class is used in the [specials1_item_widget] screen.
class Specials1ItemModel {
  Specials1ItemModel({
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
