import '../../../core/app_export.dart';

/// This class is used in the [specialslist3_item_widget] screen.
class Specialslist3ItemModel {
  Specialslist3ItemModel({
    this.iKillGiants,
    this.title,
    this.id,
  }) {
    iKillGiants = iKillGiants ?? Rx(ImageConstant.imgThumbnailImage7);
    title = title ?? Rx("I Kill Giants");
    id = id ?? Rx("");
  }

  Rx<String>? iKillGiants;

  Rx<String>? title;

  Rx<String>? id;
}
