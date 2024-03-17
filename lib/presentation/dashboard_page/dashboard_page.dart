import 'package:almohsen_s_application14/widgets/app_bar/custom_app_bar.dart';
import 'package:almohsen_s_application14/widgets/app_bar/appbar_title.dart';
import 'package:almohsen_s_application14/widgets/app_bar/appbar_trailing_image.dart';
import 'widgets/specialslist1_item_widget.dart';
import 'models/specialslist1_item_model.dart';
import 'widgets/specialslist2_item_widget.dart';
import 'models/specialslist2_item_model.dart';
import 'widgets/specialslist3_item_widget.dart';
import 'models/specialslist3_item_model.dart';
import 'widgets/specialslist4_item_widget.dart';
import 'models/specialslist4_item_model.dart';
import 'widgets/specialslist5_item_widget.dart';
import 'models/specialslist5_item_model.dart';
import 'widgets/specialslist6_item_widget.dart';
import 'models/specialslist6_item_model.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application14/core/app_export.dart';
import 'controller/dashboard_controller.dart';
import 'models/dashboard_model.dart';

// ignore_for_file: must_be_immutable
class DashboardPage extends StatelessWidget {
  DashboardPage({Key? key}) : super(key: key);

  DashboardController controller =
      Get.put(DashboardController(DashboardModel().obs));

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
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              _buildHeroCard(),
                              SizedBox(height: 26.v),
                              Padding(
                                  padding: EdgeInsets.only(left: 16.h),
                                  child: Text("lbl_special_for_you".tr,
                                      style:
                                          CustomTextStyles.titleSmallSemiBold)),
                              SizedBox(height: 17.v),
                              _buildSpecialsList1(),
                              SizedBox(height: 27.v),
                              Padding(
                                  padding: EdgeInsets.only(left: 16.h),
                                  child: Text("lbl_upcoming_movies".tr,
                                      style:
                                          CustomTextStyles.titleSmallSemiBold)),
                              SizedBox(height: 17.v),
                              _buildSpecialsList2(),
                              SizedBox(height: 24.v),
                              Padding(
                                  padding: EdgeInsets.only(left: 16.h),
                                  child: Text("lbl_featured".tr,
                                      style:
                                          CustomTextStyles.titleSmallSemiBold)),
                              SizedBox(height: 18.v),
                              _buildSpecialsList3(),
                              SizedBox(height: 27.v),
                              Padding(
                                  padding: EdgeInsets.only(left: 16.h),
                                  child: Text("lbl_upcoming_movies".tr,
                                      style:
                                          CustomTextStyles.titleSmallSemiBold)),
                              SizedBox(height: 17.v),
                              _buildSpecialsList4(),
                              SizedBox(height: 25.v),
                              Padding(
                                  padding: EdgeInsets.only(left: 16.h),
                                  child: Text("lbl_categories".tr,
                                      style:
                                          CustomTextStyles.titleSmallSemiBold)),
                              SizedBox(height: 17.v),
                              _buildSpecialsList5(),
                              SizedBox(height: 26.v),
                              Padding(
                                  padding: EdgeInsets.only(left: 16.h),
                                  child: Text("lbl_special_for_you".tr,
                                      style:
                                          CustomTextStyles.titleSmallSemiBold)),
                              SizedBox(height: 17.v),
                              _buildSpecialsList6()
                            ]))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        title: AppbarTitle(
            text: "lbl_nons".tr, margin: EdgeInsets.only(left: 16.h)),
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
  Widget _buildHeroCard() {
    return SizedBox(
        height: 300.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.bottomLeft, children: [
          CustomImageView(
              imagePath: ImageConstant.imgHeroCardImage,
              height: 300.v,
              width: 360.h,
              alignment: Alignment.center),
          Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                  padding:
                      EdgeInsets.only(left: 16.h, right: 205.h, bottom: 16.v),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("lbl_moonlight".tr,
                            style: theme.textTheme.headlineSmall),
                        SizedBox(height: 9.v),
                        Padding(
                            padding: EdgeInsets.only(right: 31.h),
                            child: Row(children: [
                              Padding(
                                  padding: EdgeInsets.only(bottom: 1.v),
                                  child: Text("lbl_sub_label".tr,
                                      style: CustomTextStyles
                                          .bodySmallWhiteA700_1)),
                              Container(
                                  height: 3.adaptSize,
                                  width: 3.adaptSize,
                                  margin: EdgeInsets.only(
                                      left: 8.h, top: 6.v, bottom: 6.v),
                                  decoration: BoxDecoration(
                                      color: appTheme.whiteA700,
                                      borderRadius:
                                          BorderRadius.circular(1.h))),
                              Padding(
                                  padding: EdgeInsets.only(left: 8.h),
                                  child: Text("lbl_4_5".tr,
                                      style: CustomTextStyles
                                          .bodySmallWhiteA700_1)),
                              CustomImageView(
                                  imagePath: ImageConstant.imgSignal,
                                  height: 8.adaptSize,
                                  width: 8.adaptSize,
                                  margin: EdgeInsets.only(
                                      left: 3.h, top: 3.v, bottom: 4.v))
                            ]))
                      ])))
        ]));
  }

  /// Section Widget
  Widget _buildSpecialsList1() {
    return SizedBox(
        height: 177.v,
        child: Obx(() => ListView.separated(
            padding: EdgeInsets.only(left: 16.h),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) {
              return SizedBox(width: 16.h);
            },
            itemCount: controller
                .dashboardModelObj.value.specialslist1ItemList.value.length,
            itemBuilder: (context, index) {
              Specialslist1ItemModel model = controller
                  .dashboardModelObj.value.specialslist1ItemList.value[index];
              return Specialslist1ItemWidget(model, onTapMovieCard: () {
                onTapMovieCard();
              });
            })));
  }

  /// Section Widget
  Widget _buildSpecialsList2() {
    return SizedBox(
        height: 185.v,
        child: Obx(() => ListView.separated(
            padding: EdgeInsets.only(left: 16.h),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) {
              return SizedBox(width: 16.h);
            },
            itemCount: controller
                .dashboardModelObj.value.specialslist2ItemList.value.length,
            itemBuilder: (context, index) {
              Specialslist2ItemModel model = controller
                  .dashboardModelObj.value.specialslist2ItemList.value[index];
              return Specialslist2ItemWidget(model, onTapMovieCard: () {
                onTapMovieCard();
              });
            })));
  }

  /// Section Widget
  Widget _buildSpecialsList3() {
    return SizedBox(
        height: 177.v,
        child: Obx(() => ListView.separated(
            padding: EdgeInsets.only(left: 16.h),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) {
              return SizedBox(width: 16.h);
            },
            itemCount: controller
                .dashboardModelObj.value.specialslist3ItemList.value.length,
            itemBuilder: (context, index) {
              Specialslist3ItemModel model = controller
                  .dashboardModelObj.value.specialslist3ItemList.value[index];
              return Specialslist3ItemWidget(model, onTapMovieCard: () {
                onTapMovieCard();
              });
            })));
  }

  /// Section Widget
  Widget _buildSpecialsList4() {
    return SizedBox(
        height: 196.v,
        child: Obx(() => ListView.separated(
            padding: EdgeInsets.only(left: 16.h),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) {
              return SizedBox(width: 16.h);
            },
            itemCount: controller
                .dashboardModelObj.value.specialslist4ItemList.value.length,
            itemBuilder: (context, index) {
              Specialslist4ItemModel model = controller
                  .dashboardModelObj.value.specialslist4ItemList.value[index];
              return Specialslist4ItemWidget(model, onTapMovieCard: () {
                onTapMovieCard();
              });
            })));
  }

  /// Section Widget
  Widget _buildSpecialsList5() {
    return SizedBox(
        height: 60.v,
        child: Obx(() => ListView.separated(
            padding: EdgeInsets.only(left: 16.h),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) {
              return SizedBox(width: 16.h);
            },
            itemCount: controller
                .dashboardModelObj.value.specialslist5ItemList.value.length,
            itemBuilder: (context, index) {
              Specialslist5ItemModel model = controller
                  .dashboardModelObj.value.specialslist5ItemList.value[index];
              return Specialslist5ItemWidget(model, onTapImgDrama: () {
                onTapImgDrama();
              });
            })));
  }

  /// Section Widget
  Widget _buildSpecialsList6() {
    return SizedBox(
        height: 177.v,
        child: Obx(() => ListView.separated(
            padding: EdgeInsets.only(left: 16.h),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) {
              return SizedBox(width: 16.h);
            },
            itemCount: controller
                .dashboardModelObj.value.specialslist6ItemList.value.length,
            itemBuilder: (context, index) {
              Specialslist6ItemModel model = controller
                  .dashboardModelObj.value.specialslist6ItemList.value[index];
              return Specialslist6ItemWidget(model, onTapMovieCard: () {
                onTapMovieCard();
              });
            })));
  }

  /// Navigates to the detailPageSevenScreen when the action is triggered.
  onTapMovieCard() {
    Get.toNamed(
      AppRoutes.detailPageSevenScreen,
    );
  }

  /// Navigates to the seeMoreSixScreen when the action is triggered.
  onTapImgDrama() {
    Get.toNamed(
      AppRoutes.seeMoreSixScreen,
    );
  }
}
