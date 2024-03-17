import '../../../core/app_export.dart';
import 'specialslist1_item_model.dart';
import 'specialslist2_item_model.dart';
import 'specialslist3_item_model.dart';
import 'specialslist4_item_model.dart';
import 'specialslist5_item_model.dart';
import 'specialslist6_item_model.dart';

/// This class defines the variables used in the [dashboard_page],
/// and is typically used to hold data that is passed between different parts of the application.
class DashboardModel {
  Rx<List<Specialslist1ItemModel>> specialslist1ItemList = Rx([
    Specialslist1ItemModel(
        thePerfection: ImageConstant.imgThumbnailImage.obs,
        title: "The Perfection".obs),
    Specialslist1ItemModel(
        thePerfection: ImageConstant.imgThumbnailImage140x90.obs,
        title: "Radio Flash".obs),
    Specialslist1ItemModel(
        thePerfection: ImageConstant.imgThumbnailImage1.obs,
        title: "Turner & Hooch".obs),
    Specialslist1ItemModel(
        thePerfection: ImageConstant.imgThumbnailImage2.obs,
        title: "Stranger Things".obs)
  ]);

  Rx<List<Specialslist2ItemModel>> specialslist2ItemList = Rx([
    Specialslist2ItemModel(
        image: ImageConstant.imgThumbnailImage3.obs,
        title: "Jumanji The Next Level".obs),
    Specialslist2ItemModel(
        image: ImageConstant.imgThumbnailImage4.obs, title: "Cloud Atlas".obs),
    Specialslist2ItemModel(
        image: ImageConstant.imgThumbnailImage5.obs,
        title: "Charlie’s Angels".obs),
    Specialslist2ItemModel(
        image: ImageConstant.imgThumbnailImage6.obs, title: "Zombieland".obs)
  ]);

  Rx<List<Specialslist3ItemModel>> specialslist3ItemList = Rx([
    Specialslist3ItemModel(
        iKillGiants: ImageConstant.imgThumbnailImage7.obs,
        title: "I Kill Giants".obs),
    Specialslist3ItemModel(
        iKillGiants: ImageConstant.imgThumbnailImage8.obs,
        title: "Disney: Togo".obs),
    Specialslist3ItemModel(
        iKillGiants: ImageConstant.imgThumbnailImage9.obs,
        title: "Angel has Fallen".obs),
    Specialslist3ItemModel(
        iKillGiants: ImageConstant.imgThumbnailImage10.obs,
        title: "The Conjuring".obs)
  ]);

  Rx<List<Specialslist4ItemModel>> specialslist4ItemList = Rx([
    Specialslist4ItemModel(
        lukas: ImageConstant.imgThumbnailImage11.obs, title: "Lukas".obs),
    Specialslist4ItemModel(
        lukas: ImageConstant.imgThumbnailImage12.obs,
        title: "Dark PhoeniX".obs),
    Specialslist4ItemModel(
        lukas: ImageConstant.imgThumbnailImage13.obs,
        title: "Pirates of Caribean".obs),
    Specialslist4ItemModel(
        lukas: ImageConstant.imgThumbnailImage6.obs, title: "Zombieland".obs)
  ]);

  Rx<List<Specialslist5ItemModel>> specialslist5ItemList = Rx([
    Specialslist5ItemModel(
        drama: ImageConstant.imgThumbnailImage60x90.obs, drama1: "Drama".obs),
    Specialslist5ItemModel(
        drama: ImageConstant.imgThumbnailImage14.obs, drama1: "Action".obs),
    Specialslist5ItemModel(
        drama: ImageConstant.imgThumbnailImage15.obs, drama1: "Thriller".obs),
    Specialslist5ItemModel(
        drama: ImageConstant.imgThumbnailImage16.obs, drama1: "Drama".obs)
  ]);

  Rx<List<Specialslist6ItemModel>> specialslist6ItemList = Rx([
    Specialslist6ItemModel(
        thePerfection: ImageConstant.imgThumbnailImage.obs,
        title: "The Perfection".obs),
    Specialslist6ItemModel(
        thePerfection: ImageConstant.imgThumbnailImage140x90.obs,
        title: "Radio Flash".obs),
    Specialslist6ItemModel(
        thePerfection: ImageConstant.imgThumbnailImage1.obs,
        title: "Turner & Hooch".obs),
    Specialslist6ItemModel(
        thePerfection: ImageConstant.imgThumbnailImage2.obs,
        title: "Stranger Things".obs)
  ]);
}
