import 'package:almohsen_s_application14/widgets/app_bar/custom_app_bar.dart';
import 'package:almohsen_s_application14/widgets/app_bar/appbar_leading_image.dart';
import 'package:almohsen_s_application14/widgets/app_bar/appbar_trailing_image.dart';
import 'package:almohsen_s_application14/widgets/custom_elevated_button.dart';
import 'package:almohsen_s_application14/widgets/custom_icon_button.dart';
import 'package:readmore/readmore.dart';
import 'widgets/movies_item_widget.dart';
import 'models/movies_item_model.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application14/core/app_export.dart';
import 'controller/detail_page_seven_controller.dart';

class DetailPageSevenScreen extends GetWidget<DetailPageSevenController> {
  const DetailPageSevenScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 16.v),
                    child: Padding(
                        padding: EdgeInsets.only(bottom: 5.v),
                        child: Column(children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgThumbnailImage28,
                              height: 140.v,
                              width: 90.h,
                              radius: BorderRadius.circular(2.h)),
                          SizedBox(height: 24.v),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomElevatedButton(
                                    width: 111.h,
                                    text: "lbl_play_now".tr,
                                    leftIcon: Container(
                                        margin: EdgeInsets.only(right: 4.h),
                                        child: CustomImageView(
                                            imagePath: ImageConstant
                                                .imgIconOnprimarycontainer16x16,
                                            height: 16.adaptSize,
                                            width: 16.adaptSize)),
                                    onPressed: () {
                                      onTapPlayNow();
                                    }),
                                Padding(
                                    padding: EdgeInsets.only(left: 8.h),
                                    child: CustomIconButton(
                                        height: 36.adaptSize,
                                        width: 36.adaptSize,
                                        padding: EdgeInsets.all(10.h),
                                        child: CustomImageView(
                                            imagePath: ImageConstant
                                                .imgSearchWhiteA700))),
                                Padding(
                                    padding: EdgeInsets.only(left: 8.h),
                                    child: CustomIconButton(
                                        height: 36.adaptSize,
                                        width: 36.adaptSize,
                                        padding: EdgeInsets.all(10.h),
                                        child: CustomImageView(
                                            imagePath: ImageConstant
                                                .imgIconWhiteA700))),
                                Padding(
                                    padding: EdgeInsets.only(left: 8.h),
                                    child: CustomIconButton(
                                        height: 36.adaptSize,
                                        width: 36.adaptSize,
                                        padding: EdgeInsets.all(10.h),
                                        child: CustomImageView(
                                            imagePath: ImageConstant
                                                .imgIconWhiteA70036x36)))
                              ]),
                          SizedBox(height: 28.v),
                          Text("lbl_captain_marvel".tr,
                              style: theme.textTheme.headlineSmall),
                          SizedBox(height: 7.v),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("lbl_2019".tr,
                                    style: theme.textTheme.bodySmall),
                                Container(
                                    height: 3.adaptSize,
                                    width: 3.adaptSize,
                                    margin: EdgeInsets.only(
                                        left: 8.h, top: 6.v, bottom: 6.v),
                                    decoration: BoxDecoration(
                                        color: theme
                                            .colorScheme.onPrimaryContainer,
                                        borderRadius:
                                            BorderRadius.circular(1.h))),
                                Padding(
                                    padding: EdgeInsets.only(left: 8.h),
                                    child: Text("lbl_action".tr,
                                        style: theme.textTheme.bodySmall)),
                                Container(
                                    height: 3.adaptSize,
                                    width: 3.adaptSize,
                                    margin: EdgeInsets.only(
                                        left: 8.h, top: 6.v, bottom: 6.v),
                                    decoration: BoxDecoration(
                                        color: theme
                                            .colorScheme.onPrimaryContainer,
                                        borderRadius:
                                            BorderRadius.circular(1.h))),
                                Container(
                                    width: 36.h,
                                    margin: EdgeInsets.only(left: 8.h),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text("lbl_4_5".tr,
                                              style: theme.textTheme.bodySmall),
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgSignal,
                                              height: 8.adaptSize,
                                              width: 8.adaptSize,
                                              margin: EdgeInsets.only(
                                                  left: 3.h,
                                                  top: 2.v,
                                                  bottom: 4.v))
                                        ]))
                              ]),
                          SizedBox(height: 5.v),
                          Text("lbl_1_hr_49min".tr,
                              style: theme.textTheme.bodySmall),
                          SizedBox(height: 27.v),
                          SizedBox(
                              width: 325.h,
                              child: ReadMoreText("msg_set_in_the_1990s".tr,
                                  trimLines: 3,
                                  colorClickableText: theme.colorScheme.primary,
                                  trimMode: TrimMode.Line,
                                  trimCollapsedText: "lbl_read_more".tr,
                                  moreStyle: theme.textTheme.bodySmall!
                                      .copyWith(height: 1.50),
                                  lessStyle: theme.textTheme.bodySmall!
                                      .copyWith(height: 1.50))),
                          SizedBox(height: 21.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 16.h),
                                  child: Text("lbl_more_info".tr,
                                      style: theme.textTheme.titleSmall))),
                          SizedBox(height: 15.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 16.h),
                                  child: Row(children: [
                                    Padding(
                                        padding: EdgeInsets.only(bottom: 1.v),
                                        child: Text("lbl_director".tr,
                                            style: theme.textTheme.bodySmall)),
                                    Padding(
                                        padding: EdgeInsets.only(left: 43.h),
                                        child: Text("msg_anna_boden_ryan".tr,
                                            style: CustomTextStyles
                                                .bodySmallGray300))
                                  ]))),
                          SizedBox(height: 9.v),
                          _buildMovieCardRow(),
                          SizedBox(height: 23.v),
                          Divider(indent: 16.h, endIndent: 16.h),
                          SizedBox(height: 26.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 16.h),
                                  child: Text("msg_you_might_also_like".tr,
                                      style: CustomTextStyles
                                          .titleSmallSemiBold))),
                          SizedBox(height: 17.v),
                          _buildMovies()
                        ]))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 40.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 16.h),
            onTap: () {
              onTapArrowLeft();
            }),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgSearch,
              margin: EdgeInsets.symmetric(horizontal: 16.h, vertical: 3.v))
        ]);
  }

  /// Section Widget
  Widget _buildMovieCardRow() {
    return Align(
        alignment: Alignment.centerLeft,
        child: Padding(
            padding: EdgeInsets.only(left: 16.h, right: 42.h),
            child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Padding(
                  padding: EdgeInsets.only(bottom: 20.v),
                  child: Text("lbl_cast".tr, style: theme.textTheme.bodySmall)),
              Expanded(
                  child: Container(
                      width: 215.h,
                      margin: EdgeInsets.only(left: 61.h),
                      child: Text("msg_brie_larson_samuel".tr,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: CustomTextStyles.bodySmallGray300
                              .copyWith(height: 1.50))))
            ])));
  }

  /// Section Widget
  Widget _buildMovies() {
    return SizedBox(
        height: 243.v,
        child: Obx(() => ListView.separated(
            padding: EdgeInsets.only(left: 16.h),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) {
              return SizedBox(width: 16.h);
            },
            itemCount: controller
                .detailPageSevenModelObj.value.moviesItemList.value.length,
            itemBuilder: (context, index) {
              MoviesItemModel model = controller
                  .detailPageSevenModelObj.value.moviesItemList.value[index];
              return MoviesItemWidget(model);
            })));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }

  /// Navigates to the channelFourScreen when the action is triggered.
  onTapPlayNow() {
    Get.toNamed(
      AppRoutes.channelFourScreen,
    );
  }
}
