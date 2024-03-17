import '../../../core/app_export.dart';
import 'movies5_item_model.dart';

/// This class defines the variables used in the [channel_five_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ChannelFiveModel {
  Rx<List<Movies5ItemModel>> movies5ItemList = Rx([
    Movies5ItemModel(
        turnerHooch: ImageConstant.imgThumbnailImage1.obs,
        title: "Turner & Hooch".obs,
        title1: "Sub-Title".obs),
    Movies5ItemModel(
        turnerHooch: ImageConstant.imgThumbnailImage26.obs,
        title: "Hellen".obs,
        title1: "What a happy Family".obs),
    Movies5ItemModel(
        turnerHooch: ImageConstant.imgThumbnailImage24.obs,
        title: "Child’s Play".obs,
        title1: "Sub-Title".obs)
  ]);
}
