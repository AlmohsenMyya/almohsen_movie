import 'package:almohsen_s_application14/widgets/app_bar/custom_app_bar.dart';
import 'package:almohsen_s_application14/widgets/app_bar/appbar_title.dart';
import 'package:almohsen_s_application14/widgets/app_bar/appbar_trailing_image.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application14/core/app_export.dart';
import 'controller/explore_ten_controller.dart';

class ExploreTenScreen extends GetWidget<ExploreTenController> {
  const ExploreTenScreen({Key? key}) : super(key: key);

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
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Opacity(
                                  opacity: 0.87,
                                  child: Padding(
                                      padding: EdgeInsets.only(left: 16.h),
                                      child: Text("lbl_trending_movies".tr,
                                          style: CustomTextStyles
                                              .titleSmallWhiteA700))),
                              SizedBox(height: 16.v),
                              _buildTrending(),
                              SizedBox(height: 26.v),
                              Opacity(
                                  opacity: 0.87,
                                  child: Padding(
                                      padding: EdgeInsets.only(left: 16.h),
                                      child: Text("lbl_trending_movies".tr,
                                          style: CustomTextStyles
                                              .titleSmallWhiteA700))),
                              SizedBox(height: 16.v),
                              _buildMovieCard1(),
                              SizedBox(height: 26.v),
                              Opacity(
                                  opacity: 0.87,
                                  child: Padding(
                                      padding: EdgeInsets.only(left: 16.h),
                                      child: Text("lbl_trending_movies".tr,
                                          style: CustomTextStyles
                                              .titleSmallWhiteA700))),
                              SizedBox(height: 16.v),
                              _buildMovieCard2()
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
  Widget _buildTrending() {
    return Padding(
        padding: EdgeInsets.only(left: 16.h),
        child: Row(children: [
          Expanded(
              child: GestureDetector(
                  onTap: () {
                    onTapMovieCard();
                  },
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgThumbnailImage12,
                            height: 160.v,
                            width: 312.h,
                            radius: BorderRadius.circular(2.h)),
                        SizedBox(height: 9.v),
                        Text("lbl_dark_phoenix2".tr,
                            style: CustomTextStyles.titleSmallMedium),
                        SizedBox(height: 3.v),
                        Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(bottom: 1.v),
                                  child: Text("lbl_sub_label".tr,
                                      style: theme.textTheme.bodySmall)),
                              Container(
                                  height: 3.adaptSize,
                                  width: 3.adaptSize,
                                  margin: EdgeInsets.only(
                                      left: 8.h, top: 6.v, bottom: 6.v),
                                  decoration: BoxDecoration(
                                      color:
                                          theme.colorScheme.onPrimaryContainer,
                                      borderRadius:
                                          BorderRadius.circular(1.h))),
                              Padding(
                                  padding: EdgeInsets.only(left: 8.h),
                                  child:
                                      _buildRatings(ratingText: "lbl_4_5".tr))
                            ])
                      ]))),
          Expanded(
              child: GestureDetector(
                  onTap: () {
                    onTapMovieCard1();
                  },
                  child: Padding(
                      padding: EdgeInsets.only(left: 16.h),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomImageView(
                                imagePath:
                                    ImageConstant.imgThumbnailImage160x312,
                                height: 160.v,
                                width: 312.h,
                                radius: BorderRadius.circular(2.h)),
                            SizedBox(height: 9.v),
                            Text("lbl_label".tr,
                                style: CustomTextStyles.titleSmallMedium),
                            SizedBox(height: 2.v),
                            Row(children: [
                              Padding(
                                  padding: EdgeInsets.symmetric(vertical: 1.v),
                                  child: Text("lbl_sub_label".tr,
                                      style: theme.textTheme.bodySmall)),
                              Container(
                                  height: 3.adaptSize,
                                  width: 3.adaptSize,
                                  margin: EdgeInsets.only(
                                      left: 8.h, top: 7.v, bottom: 7.v),
                                  decoration: BoxDecoration(
                                      color:
                                          theme.colorScheme.onPrimaryContainer,
                                      borderRadius:
                                          BorderRadius.circular(1.h))),
                              Padding(
                                  padding: EdgeInsets.only(left: 8.h),
                                  child: Text("lbl_4_5".tr,
                                      style: theme.textTheme.bodySmall)),
                              CustomImageView(
                                  imagePath: ImageConstant.imgSignal,
                                  height: 8.adaptSize,
                                  width: 8.adaptSize,
                                  margin: EdgeInsets.only(
                                      left: 3.h, top: 5.v, bottom: 5.v))
                            ])
                          ]))))
        ]));
  }

  /// Section Widget
  Widget _buildMovieCard1() {
    return Padding(
        padding: EdgeInsets.only(left: 16.h),
        child: Row(children: [
          Expanded(
              child: GestureDetector(
                  onTap: () {
                    onTapMovieCard2();
                  },
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgThumbnailImage140x90,
                            height: 160.v,
                            width: 312.h,
                            radius: BorderRadius.circular(2.h)),
                        SizedBox(height: 9.v),
                        Text("lbl_dark_phoenix2".tr,
                            style: CustomTextStyles.titleSmallMedium),
                        SizedBox(height: 3.v),
                        Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(bottom: 1.v),
                                  child: Text("lbl_sub_label".tr,
                                      style: theme.textTheme.bodySmall)),
                              Container(
                                  height: 3.adaptSize,
                                  width: 3.adaptSize,
                                  margin: EdgeInsets.only(
                                      left: 8.h, top: 6.v, bottom: 6.v),
                                  decoration: BoxDecoration(
                                      color:
                                          theme.colorScheme.onPrimaryContainer,
                                      borderRadius:
                                          BorderRadius.circular(1.h))),
                              Padding(
                                  padding: EdgeInsets.only(left: 8.h),
                                  child:
                                      _buildRatings(ratingText: "lbl_4_5".tr))
                            ])
                      ]))),
          Expanded(
              child: GestureDetector(
                  onTap: () {
                    onTapMovieCard3();
                  },
                  child: Padding(
                      padding: EdgeInsets.only(left: 16.h),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomImageView(
                                imagePath:
                                    ImageConstant.imgThumbnailImage160x312,
                                height: 160.v,
                                width: 312.h,
                                radius: BorderRadius.circular(2.h)),
                            SizedBox(height: 9.v),
                            Text("lbl_label".tr,
                                style: CustomTextStyles.titleSmallMedium),
                            SizedBox(height: 2.v),
                            Row(children: [
                              Padding(
                                  padding: EdgeInsets.symmetric(vertical: 1.v),
                                  child: Text("lbl_sub_label".tr,
                                      style: theme.textTheme.bodySmall)),
                              Container(
                                  height: 3.adaptSize,
                                  width: 3.adaptSize,
                                  margin: EdgeInsets.only(
                                      left: 8.h, top: 7.v, bottom: 7.v),
                                  decoration: BoxDecoration(
                                      color:
                                          theme.colorScheme.onPrimaryContainer,
                                      borderRadius:
                                          BorderRadius.circular(1.h))),
                              Padding(
                                  padding: EdgeInsets.only(left: 8.h),
                                  child: Text("lbl_4_5".tr,
                                      style: theme.textTheme.bodySmall)),
                              CustomImageView(
                                  imagePath: ImageConstant.imgSignal,
                                  height: 8.adaptSize,
                                  width: 8.adaptSize,
                                  margin: EdgeInsets.only(
                                      left: 3.h, top: 5.v, bottom: 5.v))
                            ])
                          ]))))
        ]));
  }

  /// Section Widget
  Widget _buildMovieCard2() {
    return Padding(
        padding: EdgeInsets.only(left: 16.h),
        child: Row(children: [
          Expanded(
              child: GestureDetector(
                  onTap: () {
                    onTapMovieCard4();
                  },
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgThumbnailImage31,
                            height: 160.v,
                            width: 312.h,
                            radius: BorderRadius.circular(2.h)),
                        SizedBox(height: 9.v),
                        Text("lbl_dark_phoenix2".tr,
                            style: CustomTextStyles.titleSmallMedium),
                        SizedBox(height: 3.v),
                        Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(bottom: 1.v),
                                  child: Text("lbl_sub_label".tr,
                                      style: theme.textTheme.bodySmall)),
                              Container(
                                  height: 3.adaptSize,
                                  width: 3.adaptSize,
                                  margin: EdgeInsets.only(
                                      left: 8.h, top: 6.v, bottom: 6.v),
                                  decoration: BoxDecoration(
                                      color:
                                          theme.colorScheme.onPrimaryContainer,
                                      borderRadius:
                                          BorderRadius.circular(1.h))),
                              Padding(
                                  padding: EdgeInsets.only(left: 8.h),
                                  child:
                                      _buildRatings(ratingText: "lbl_4_5".tr))
                            ])
                      ]))),
          Expanded(
              child: GestureDetector(
                  onTap: () {
                    onTapMovieCard5();
                  },
                  child: Padding(
                      padding: EdgeInsets.only(left: 16.h),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomImageView(
                                imagePath:
                                    ImageConstant.imgThumbnailImage160x312,
                                height: 160.v,
                                width: 312.h,
                                radius: BorderRadius.circular(2.h)),
                            SizedBox(height: 9.v),
                            Text("lbl_label".tr,
                                style: CustomTextStyles.titleSmallMedium),
                            SizedBox(height: 2.v),
                            Row(children: [
                              Padding(
                                  padding: EdgeInsets.symmetric(vertical: 1.v),
                                  child: Text("lbl_sub_label".tr,
                                      style: theme.textTheme.bodySmall)),
                              Container(
                                  height: 3.adaptSize,
                                  width: 3.adaptSize,
                                  margin: EdgeInsets.only(
                                      left: 8.h, top: 7.v, bottom: 7.v),
                                  decoration: BoxDecoration(
                                      color:
                                          theme.colorScheme.onPrimaryContainer,
                                      borderRadius:
                                          BorderRadius.circular(1.h))),
                              Padding(
                                  padding: EdgeInsets.only(left: 8.h),
                                  child: Text("lbl_4_5".tr,
                                      style: theme.textTheme.bodySmall)),
                              CustomImageView(
                                  imagePath: ImageConstant.imgSignal,
                                  height: 8.adaptSize,
                                  width: 8.adaptSize,
                                  margin: EdgeInsets.only(
                                      left: 3.h, top: 5.v, bottom: 5.v))
                            ])
                          ]))))
        ]));
  }

  /// Common widget
  Widget _buildRatings({required String ratingText}) {
    return SizedBox(
        width: 36.h,
        child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(ratingText,
              style: theme.textTheme.bodySmall!
                  .copyWith(color: theme.colorScheme.onPrimaryContainer)),
          CustomImageView(
              imagePath: ImageConstant.imgSignal,
              height: 8.adaptSize,
              width: 8.adaptSize,
              margin: EdgeInsets.only(left: 3.h, top: 2.v, bottom: 4.v))
        ]));
  }

  /// Navigates to the detailPageSevenScreen when the action is triggered.
  onTapMovieCard() {
    Get.toNamed(
      AppRoutes.detailPageSevenScreen,
    );
  }

  /// Navigates to the detailPageSevenScreen when the action is triggered.
  onTapMovieCard1() {
    Get.toNamed(
      AppRoutes.detailPageSevenScreen,
    );
  }

  /// Navigates to the detailPageSevenScreen when the action is triggered.
  onTapMovieCard2() {
    Get.toNamed(
      AppRoutes.detailPageSevenScreen,
    );
  }

  /// Navigates to the detailPageSevenScreen when the action is triggered.
  onTapMovieCard3() {
    Get.toNamed(
      AppRoutes.detailPageSevenScreen,
    );
  }

  /// Navigates to the detailPageSevenScreen when the action is triggered.
  onTapMovieCard4() {
    Get.toNamed(
      AppRoutes.detailPageSevenScreen,
    );
  }

  /// Navigates to the detailPageSevenScreen when the action is triggered.
  onTapMovieCard5() {
    Get.toNamed(
      AppRoutes.detailPageSevenScreen,
    );
  }
}
