import '../../../core/app_export.dart';

/// This class is used in the [io_item_widget] screen.
class IoItemModel {
  IoItemModel({
    this.io,
    this.title,
    this.title1,
    this.id,
  }) {
    io = io ?? Rx(ImageConstant.imgThumbnailImage180x120);
    title = title ?? Rx("IO");
    title1 = title1 ?? Rx("No Christmas For You");
    id = id ?? Rx("");
  }

  Rx<String>? io;

  Rx<String>? title;

  Rx<String>? title1;

  Rx<String>? id;
}
