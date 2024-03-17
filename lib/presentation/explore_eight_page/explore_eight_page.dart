import 'package:almohsen_s_application14/widgets/app_bar/custom_app_bar.dart';
import 'package:almohsen_s_application14/widgets/app_bar/appbar_title.dart';
import 'package:almohsen_s_application14/widgets/app_bar/appbar_trailing_image.dart';
import 'widgets/specials1_item_widget.dart';
import 'models/specials1_item_model.dart';
import 'widgets/exploregrid1_item_widget.dart';
import 'models/exploregrid1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application14/core/app_export.dart';
import 'controller/explore_eight_controller.dart';
import 'models/explore_eight_model.dart';

// ignore_for_file: must_be_immutable
class ExploreEightPage extends StatelessWidget {
  ExploreEightPage({Key? key}) : super(key: key);

  ExploreEightController controller =
      Get.put(ExploreEightController(ExploreEightModel().obs));

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
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 16.h),
                                  child: Text("msg_categories_you_like".tr,
                                      style: theme.textTheme.titleSmall))),
                          SizedBox(height: 17.v),
                          _buildSpecials(),
                          SizedBox(height: 26.v),
                          Padding(
                              padding: EdgeInsets.symmetric(horizontal: 16.h),
                              child: _buildActionRow(
                                  dynamicText: "lbl_best_movie".tr,
                                  dynamicText1: "lbl_more".tr)),
                          SizedBox(height: 20.v),
                          _buildHeroCard(),
                          SizedBox(height: 25.v),
                          Padding(
                              padding: EdgeInsets.symmetric(horizontal: 16.h),
                              child: _buildActionRow(
                                  dynamicText: "lbl_drama".tr,
                                  dynamicText1: "lbl_more".tr)),
                          SizedBox(height: 17.v),
                          _buildExploreGrid()
                        ]))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        title: AppbarTitle(
            text: "lbl_explore".tr, margin: EdgeInsets.only(left: 16.h)),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgIconOnprimarycontainer,
              margin: EdgeInsets.only(left: 16.h)),
          AppbarTrailingImage(
              imagePath: ImageConstant.imgIconOnprimarycontainer24x24,
              margin: EdgeInsets.symmetric(horizontal: 16.h))
        ]);
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
                .exploreEightModelObj.value.specials1ItemList.value.length,
            itemBuilder: (context, index) {
              Specials1ItemModel model = controller
                  .exploreEightModelObj.value.specials1ItemList.value[index];
              return Specials1ItemWidget(model, onTapImgDrama: () {
                onTapImgDrama();
              });
            })));
  }

  /// Section Widget
  Widget _buildHeroCard() {
    return SizedBox(
        height: 300.v,
        width: 328.h,
        child: Stack(alignment: Alignment.bottomLeft, children: [
          CustomImageView(
              imagePath: ImageConstant.imgHeroCardImage300x328,
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
  Widget _buildExploreGrid() {
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
                .exploreEightModelObj.value.exploregrid1ItemList.value.length,
            itemBuilder: (context, index) {
              Exploregrid1ItemModel model = controller
                  .exploreEightModelObj.value.exploregrid1ItemList.value[index];
              return Exploregrid1ItemWidget(model, onTapMovieCard: () {
                onTapMovieCard();
              });
            })));
  }

  /// Common widget
  Widget _buildActionRow({
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
