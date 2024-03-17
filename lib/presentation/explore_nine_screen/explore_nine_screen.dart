import 'package:almohsen_s_application14/widgets/app_bar/custom_app_bar.dart';
import 'package:almohsen_s_application14/widgets/app_bar/appbar_leading_image.dart';
import 'package:almohsen_s_application14/widgets/app_bar/appbar_title_searchview.dart';
import 'widgets/specials2_item_widget.dart';
import 'models/specials2_item_model.dart';
import 'widgets/explorenine_item_widget.dart';
import 'models/explorenine_item_model.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application14/core/app_export.dart';
import 'controller/explore_nine_controller.dart';

class ExploreNineScreen extends GetWidget<ExploreNineController> {
  const ExploreNineScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 34.v),
                    child: Padding(
                        padding: EdgeInsets.only(bottom: 5.v),
                        child: Column(children: [
                          Padding(
                              padding: EdgeInsets.symmetric(horizontal: 16.h),
                              child: _buildFrameSixty(
                                  dynamicText: "lbl_discover_movie".tr,
                                  dynamicText1: "lbl_more".tr)),
                          SizedBox(height: 20.v),
                          _buildHeroCard(),
                          SizedBox(height: 26.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 16.h),
                                  child: Text("msg_categories_you_like".tr,
                                      style: theme.textTheme.titleSmall))),
                          SizedBox(height: 17.v),
                          _buildSpecials(),
                          SizedBox(height: 25.v),
                          Padding(
                              padding: EdgeInsets.symmetric(horizontal: 16.h),
                              child: _buildFrameSixty(
                                  dynamicText: "lbl_drama".tr,
                                  dynamicText1: "lbl_more".tr)),
                          SizedBox(height: 17.v),
                          _buildExploreNine()
                        ]))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        height: 48.v,
        leadingWidth: 40.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 16.h, top: 8.v, bottom: 8.v),
            onTap: () {
              onTapArrowLeft();
            }),
        title: AppbarTitleSearchview(
            margin: EdgeInsets.only(left: 12.h),
            hintText: "lbl_search_movie".tr,
            controller: controller.searchController));
  }

  /// Section Widget
  Widget _buildHeroCard() {
    return SizedBox(
        height: 300.v,
        width: 328.h,
        child: Stack(alignment: Alignment.bottomLeft, children: [
          CustomImageView(
              imagePath: ImageConstant.imgHeroCardImage1,
              height: 300.v,
              width: 328.h,
              alignment: Alignment.center),
          Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                  padding:
                      EdgeInsets.only(left: 16.h, right: 173.h, bottom: 16.v),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("lbl_moonlight".tr,
                            style: theme.textTheme.headlineSmall),
                        SizedBox(height: 9.v),
                        Row(children: [
                          Padding(
                              padding: EdgeInsets.only(bottom: 1.v),
                              child: Text("lbl_sub_label".tr,
                                  style:
                                      CustomTextStyles.bodySmallWhiteA700_1)),
                          Container(
                              height: 3.adaptSize,
                              width: 3.adaptSize,
                              margin: EdgeInsets.only(
                                  left: 8.h, top: 6.v, bottom: 6.v),
                              decoration: BoxDecoration(
                                  color: appTheme.whiteA700,
                                  borderRadius: BorderRadius.circular(1.h))),
                          Padding(
                              padding: EdgeInsets.only(left: 8.h),
                              child: Text("lbl_4_5".tr,
                                  style:
                                      CustomTextStyles.bodySmallWhiteA700_1)),
                          CustomImageView(
                              imagePath: ImageConstant.imgSignal,
                              height: 8.adaptSize,
                              width: 8.adaptSize,
                              margin: EdgeInsets.only(
                                  left: 3.h, top: 3.v, bottom: 4.v))
                        ])
                      ])))
        ]));
  }

  /// Section Widget
  Widget _buildSpecials() {
    return SizedBox(
        height: 60.v,
        child: Obx(() => ListView.separated(
            padding: EdgeInsets.only(left: 16.h),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) {
              return SizedBox(width: 16.h);
            },
            itemCount: controller
                .exploreNineModelObj.value.specials2ItemList.value.length,
            itemBuilder: (context, index) {
              Specials2ItemModel model = controller
                  .exploreNineModelObj.value.specials2ItemList.value[index];
              return Specials2ItemWidget(model, onTapImgDrama: () {
                onTapImgDrama();
              });
            })));
  }

  /// Section Widget
  Widget _buildExploreNine() {
    return Padding(
        padding: EdgeInsets.only(left: 16.h),
        child: Obx(() => GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisExtent: 223.v,
                crossAxisCount: 3,
                mainAxisSpacing: 16.h,
                crossAxisSpacing: 16.h),
            physics: NeverScrollableScrollPhysics(),
            itemCount: controller
                .exploreNineModelObj.value.explorenineItemList.value.length,
            itemBuilder: (context, index) {
              ExplorenineItemModel model = controller
                  .exploreNineModelObj.value.explorenineItemList.value[index];
              return ExplorenineItemWidget(model, onTapMovieCard: () {
                onTapMovieCard();
              });
            })));
  }

  /// Common widget
  Widget _buildFrameSixty({
    required String dynamicText,
    required String dynamicText1,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Text(dynamicText,
          style:
              theme.textTheme.titleSmall!.copyWith(color: appTheme.whiteA700)),
      Spacer(),
      Text(dynamicText1,
          style: CustomTextStyles.bodySmallWhiteA700_1
              .copyWith(color: appTheme.whiteA700)),
      CustomImageView(
          imagePath: ImageConstant.imgIconPrimary,
          height: 18.adaptSize,
          width: 18.adaptSize,
          margin: EdgeInsets.only(left: 5.h))
    ]);
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }

  /// Navigates to the seeMoreSixScreen when the action is triggered.
  onTapImgDrama() {
    Get.toNamed(
      AppRoutes.seeMoreSixScreen,
    );
  }

  /// Navigates to the detailPageSevenScreen when the action is triggered.
  onTapMovieCard() {
    Get.toNamed(
      AppRoutes.detailPageSevenScreen,
    );
  }
}
