import '../../../core/app_export.dart';

/// This class is used in the [movies4_item_widget] screen.
class Movies4ItemModel {
  Movies4ItemModel({
    this.iONetflix,
    this.title,
    this.title1,
    this.id,
  }) {
    iONetflix = iONetflix ?? Rx(ImageConstant.imgThumbnailImage180x120);
    title = title ?? Rx("IO: Netflix");
    title1 = title1 ?? Rx("In near future we must save earth");
    id = id ?? Rx("");
  }

  Rx<String>? iONetflix;

  Rx<String>? title;

  Rx<String>? title1;

  Rx<String>? id;
}
