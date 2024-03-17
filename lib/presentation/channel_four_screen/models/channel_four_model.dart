import '../../../core/app_export.dart';
import 'channelfour_item_model.dart';

/// This class defines the variables used in the [channel_four_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ChannelFourModel {
  Rx<List<ChannelfourItemModel>> channelfourItemList = Rx([
    ChannelfourItemModel(
        ktv: ImageConstant.imgBackgroundImage.obs, kTV1: "K TV".obs),
    ChannelfourItemModel(
        ktv: ImageConstant.imgBackgroundImage56x56.obs, kTV1: "ONENEWS TV".obs),
    ChannelfourItemModel(
        ktv: ImageConstant.imgBackgroundImage1.obs, kTV1: "CNN TV".obs),
    ChannelfourItemModel(
        ktv: ImageConstant.imgBackgroundImage2.obs, kTV1: "ESPN".obs)
  ]);
}
