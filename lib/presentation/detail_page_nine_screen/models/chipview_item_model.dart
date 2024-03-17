import '../../../core/app_export.dart';

/// This class is used in the [chipview_item_widget] screen.
class ChipviewItemModel {
  Rx<String>? tags = Rx("Action");

  Rx<bool>? isSelected = Rx(false);
}
