import 'package:almohsen_s_application14/widgets/app_bar/custom_app_bar.dart';
import 'package:almohsen_s_application14/widgets/app_bar/appbar_leading_image.dart';
import 'package:almohsen_s_application14/widgets/app_bar/appbar_title_searchview.dart';
import 'widgets/seemoreseven_item_widget.dart';
import 'models/seemoreseven_item_model.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application14/core/app_export.dart';
import 'controller/see_more_seven_controller.dart';

class SeeMoreSevenScreen extends GetWidget<SeeMoreSevenController> {
  const SeeMoreSevenScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 29.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("lbl_trending_movies".tr,
                          style: theme.textTheme.headlineSmall),
                      SizedBox(height: 18.v),
                      _buildSeeMoreSeven()
                    ]))));
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
            hintText: "msg_search_in_action".tr,
            controller: controller.searchController));
  }

  /// Section Widget
  Widget _buildSeeMoreSeven() {
    return Expanded(
        child: Obx(() => GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisExtent: 177.v,
                crossAxisCount: 3,
                mainAxisSpacing: 16.h,
                crossAxisSpacing: 16.h),
            physics: BouncingScrollPhysics(),
            itemCount: controller
                .seeMoreSevenModelObj.value.seemoresevenItemList.value.length,
            itemBuilder: (context, index) {
              SeemoresevenItemModel model = controller
                  .seeMoreSevenModelObj.value.seemoresevenItemList.value[index];
              return SeemoresevenItemWidget(model, onTapMovieCard: () {
                onTapMovieCard();
              });
            })));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }

  /// Navigates to the detailPageSevenScreen when the action is triggered.
  onTapMovieCard() {
    Get.toNamed(
      AppRoutes.detailPageSevenScreen,
    );
  }
}
