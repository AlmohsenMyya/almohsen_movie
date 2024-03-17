import '../../../core/app_export.dart';

/// This class is used in the [seemoresix_item_widget] screen.
class SeemoresixItemModel {
  SeemoresixItemModel({
    this.rodioflash,
    this.title,
    this.id,
  }) {
    rodioflash = rodioflash ?? Rx(ImageConstant.imgThumbnailImage140x90);
    title = title ?? Rx("Rodioflash");
    id = id ?? Rx("");
  }

  Rx<String>? rodioflash;

  Rx<String>? title;

  Rx<String>? id;
}
