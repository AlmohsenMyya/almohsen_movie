import '../../../core/app_export.dart';
import 'exploregrid_item_model.dart';

/// This class defines the variables used in the [explore_six_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ExploreSixModel {
  Rx<List<ExploregridItemModel>> exploregridItemList = Rx([
    ExploregridItemModel(
        turnerHooch: ImageConstant.imgThumbnailImage1.obs,
        title: "Turner & Hooch".obs,
        title1: "Sub-Title".obs),
    ExploregridItemModel(
        turnerHooch: ImageConstant.imgThumbnailImage26.obs,
        title: "Hellen".obs,
        title1: "What a happy Family".obs),
    ExploregridItemModel(
        turnerHooch: ImageConstant.imgThumbnailImage24.obs,
        title: "Child’s Play".obs,
        title1: "Sub-Title".obs),
    ExploregridItemModel(
        turnerHooch: ImageConstant.imgThumbnailImage20.obs,
        title: "Jallikattu".obs,
        title1: "Lijo Jose Pelliserys on Earth".obs),
    ExploregridItemModel(
        title: "Yesterday ".obs,
        title1: "Everyone in the world has forgotten".obs),
    ExploregridItemModel(title: "More".obs)
  ]);
}
