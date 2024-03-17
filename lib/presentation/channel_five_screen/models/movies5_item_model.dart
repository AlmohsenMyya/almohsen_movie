import '../../../core/app_export.dart';

/// This class is used in the [movies5_item_widget] screen.
class Movies5ItemModel {
  Movies5ItemModel({
    this.turnerHooch,
    this.title,
    this.title1,
    this.id,
  }) {
    turnerHooch = turnerHooch ?? Rx(ImageConstant.imgThumbnailImage1);
    title = title ?? Rx("Turner & Hooch");
    title1 = title1 ?? Rx("Sub-Title");
    id = id ?? Rx("");
  }

  Rx<String>? turnerHooch;

  Rx<String>? title;

  Rx<String>? title1;

  Rx<String>? id;
}
