import '../../../core/app_export.dart';
import 'specials_item_model.dart';
import 'io_item_model.dart';
import 'turnerhooch_item_model.dart';

/// This class defines the variables used in the [explore_seven_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ExploreSevenModel {
  Rx<List<SpecialsItemModel>> specialsItemList = Rx([
    SpecialsItemModel(
        drama: ImageConstant.imgThumbnailImage60x90.obs, drama1: "Drama".obs),
    SpecialsItemModel(
        drama: ImageConstant.imgThumbnailImage14.obs, drama1: "Action".obs),
    SpecialsItemModel(
        drama: ImageConstant.imgThumbnailImage15.obs, drama1: "Thriller".obs),
    SpecialsItemModel(
        drama: ImageConstant.imgThumbnailImage16.obs, drama1: "Drama".obs)
  ]);

  Rx<List<IoItemModel>> ioItemList = Rx([
    IoItemModel(
        io: ImageConstant.imgThumbnailImage180x120.obs,
        title: "IO".obs,
        title1: "No Christmas For You".obs),
    IoItemModel(
        io: ImageConstant.imgThumbnailImage7.obs,
        title: "I Kill Giants".obs,
        title1: "As long we fight back, we have…".obs),
    IoItemModel(
        io: ImageConstant.imgThumbnailImage9.obs,
        title: "Angel has Fallen".obs,
        title1: "Sub-Title".obs),
    IoItemModel(
        io: ImageConstant.imgThumbnailImage12.obs,
        title: "Title".obs,
        title1: "As long we fight …".obs),
    IoItemModel(
        io: ImageConstant.imgThumbnailImage140x90.obs,
        title: "Radioflash".obs,
        title1: "We have More …".obs),
    IoItemModel(
        io: ImageConstant.imgThumbnailImage28.obs,
        title: "Captain Marvel".obs,
        title1: "Nice One".obs)
  ]);

  Rx<List<TurnerhoochItemModel>> turnerhoochItemList = Rx([
    TurnerhoochItemModel(
        turnerHooch: ImageConstant.imgThumbnailImage1.obs,
        title: "Turner & Hooch".obs,
        title1: "Sub-Title".obs),
    TurnerhoochItemModel(
        turnerHooch: ImageConstant.imgThumbnailImage26.obs,
        title: "Hellen".obs,
        title1: "What a happy Family".obs),
    TurnerhoochItemModel(
        turnerHooch: ImageConstant.imgThumbnailImage24.obs,
        title: "Child’s Play".obs,
        title1: "Sub-Title".obs),
    TurnerhoochItemModel(
        turnerHooch: ImageConstant.imgThumbnailImage20.obs,
        title: "Jallikattu".obs,
        title1: "Lijo Jose Pelliserys on Earth".obs),
    TurnerhoochItemModel(
        title: "Yesterday ".obs,
        title1: "Everyone in the world has forgotten".obs)
  ]);
}
