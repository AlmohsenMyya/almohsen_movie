import '../../../core/app_export.dart';

/// This class is used in the [channelfour_item_widget] screen.
class ChannelfourItemModel {
  ChannelfourItemModel({
    this.ktv,
    this.kTV1,
    this.id,
  }) {
    ktv = ktv ?? Rx(ImageConstant.imgBackgroundImage);
    kTV1 = kTV1 ?? Rx("K TV");
    id = id ?? Rx("");
  }

  Rx<String>? ktv;

  Rx<String>? kTV1;

  Rx<String>? id;
}
