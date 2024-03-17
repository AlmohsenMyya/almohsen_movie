import 'package:almohsen_s_application14/widgets/app_bar/custom_app_bar.dart';
import 'package:almohsen_s_application14/widgets/app_bar/appbar_leading_image.dart';
import 'package:almohsen_s_application14/widgets/app_bar/appbar_trailing_image.dart';
import 'models/chipview_item_model.dart';
import '../detail_page_nine_screen/widgets/chipview_item_widget.dart';
import 'widgets/movies1_item_widget.dart';
import 'models/movies1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application14/core/app_export.dart';
import 'controller/detail_page_nine_controller.dart';

class DetailPageNineScreen extends GetWidget<DetailPageNineController> {
  const DetailPageNineScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 32.v),
                    child: Padding(
                        padding: EdgeInsets.only(bottom: 5.v),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(left: 16.h),
                                  child: Row(children: [
                                    CustomImageView(
                                        imagePath:
                                            ImageConstant.imgThumbnailImage28,
                                        height: 140.v,
                                        width: 90.h,
                                        radius: BorderRadius.circular(2.h),
                                        onTap: () {
                                          onTapImgThumbnailImage();
                                        }),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 24.h,
                                            top: 38.v,
                                            bottom: 36.v),
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text("lbl_captain_marvel".tr,
                                                  style: CustomTextStyles
                                                      .titleMediumWhiteA700),
                                              SizedBox(height: 6.v),
                                              SizedBox(
                                                  width: 136.h,
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text("lbl_2019".tr,
                                                            style: theme
                                                                .textTheme
                                                                .bodySmall),
                                                        Container(
                                                            height: 3.adaptSize,
                                                            width: 3.adaptSize,
                                                            margin: EdgeInsets
                                                                .symmetric(
                                                                    vertical:
                                                                        6.v),
                                                            decoration: BoxDecoration(
                                                                color: theme
                                                                    .colorScheme
                                                                    .onPrimaryContainer,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            1.h))),
                                                        Text("lbl_action".tr,
                                                            style: theme
                                                                .textTheme
                                                                .bodySmall),
                                                        Container(
                                                            height: 3.adaptSize,
                                                            width: 3.adaptSize,
                                                            margin: EdgeInsets
                                                                .symmetric(
                                                                    vertical:
                                                                        6.v),
                                                            decoration: BoxDecoration(
                                                                color: theme
                                                                    .colorScheme
                                                                    .onPrimaryContainer,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            1.h))),
                                                        Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text("lbl_4_5".tr,
                                                                  style: theme
                                                                      .textTheme
                                                                      .bodySmall),
                                                              CustomImageView(
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgSignal,
                                                                  height: 8
                                                                      .adaptSize,
                                                                  width: 8
                                                                      .adaptSize,
                                                                  margin: EdgeInsets.only(
                                                                      left: 3.h,
                                                                      top: 2.v,
                                                                      bottom:
                                                                          4.v))
                                                            ])
                                                      ])),
                                              SizedBox(height: 5.v),
                                              Text("lbl_1_hr_49min".tr,
                                                  style:
                                                      theme.textTheme.bodySmall)
                                            ]))
                                  ])),
                              SizedBox(height: 24.v),
                              _buildChipView(),
                              SizedBox(height: 25.v),
                              Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                      width: 325.h,
                                      margin: EdgeInsets.only(
                                          left: 16.h, right: 18.h),
                                      child: Text("msg_set_in_the_1990s2".tr,
                                          maxLines: 7,
                                          overflow: TextOverflow.ellipsis,
                                          style: theme.textTheme.bodySmall!
                                              .copyWith(height: 1.50)))),
                              SizedBox(height: 26.v),
                              Padding(
                                  padding: EdgeInsets.only(left: 16.h),
                                  child: Text("msg_you_might_also_like".tr,
                                      style:
                                          CustomTextStyles.titleSmallSemiBold)),
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
  Widget _buildChipView() {
    return Padding(
        padding: EdgeInsets.only(left: 16.h),
        child: Obx(() => Wrap(
            runSpacing: 8.v,
            spacing: 8.h,
            children: List<Widget>.generate(
                controller.detailPageNineModelObj.value.chipviewItemList.value
                    .length, (index) {
              ChipviewItemModel model = controller
                  .detailPageNineModelObj.value.chipviewItemList.value[index];
              return ChipviewItemWidget(model);
            }))));
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
                .detailPageNineModelObj.value.movies1ItemList.value.length,
            itemBuilder: (context, index) {
              Movies1ItemModel model = controller
                  .detailPageNineModelObj.value.movies1ItemList.value[index];
              return Movies1ItemWidget(model, onTapMovieCard: () {
                onTapMovieCard();
              });
            })));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }

  /// Navigates to the detailPageSevenScreen when the action is triggered.
  onTapImgThumbnailImage() {
    Get.toNamed(
      AppRoutes.detailPageSevenScreen,
    );
  }

  /// Navigates to the detailPageSevenScreen when the action is triggered.
  onTapMovieCard() {
    Get.toNamed(
      AppRoutes.detailPageSevenScreen,
    );
  }
}
