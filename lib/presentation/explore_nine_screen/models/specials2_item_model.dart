import '../../../core/app_export.dart';

/// This class is used in the [specials2_item_widget] screen.
class Specials2ItemModel {
  Specials2ItemModel({
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
