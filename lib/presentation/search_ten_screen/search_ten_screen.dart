import 'package:almohsen_s_application14/widgets/app_bar/custom_app_bar.dart';
import 'package:almohsen_s_application14/widgets/app_bar/appbar_title_searchview_one.dart';
import 'package:almohsen_s_application14/widgets/custom_checkbox_button.dart';
import 'widgets/searchten_item_widget.dart';
import 'models/searchten_item_model.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application14/core/app_export.dart';
import 'controller/search_ten_controller.dart';

class SearchTenScreen extends GetWidget<SearchTenController> {
  const SearchTenScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 27.v),
                    child: Container(
                        margin: EdgeInsets.only(bottom: 5.v),
                        padding: EdgeInsets.symmetric(horizontal: 16.h),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(children: [
                                CustomImageView(
                                    imagePath:
                                        ImageConstant.imgIconPrimary20x20,
                                    height: 20.adaptSize,
                                    width: 20.adaptSize,
                                    margin: EdgeInsets.only(bottom: 2.v)),
                                Padding(
                                    padding: EdgeInsets.only(left: 8.h),
                                    child: Text("lbl_trending_search".tr,
                                        style: CustomTextStyles
                                            .titleMediumWhiteA70018))
                              ]),
                              SizedBox(height: 26.v),
                              Text("lbl_love_in_trouble".tr,
                                  style: CustomTextStyles.bodyMediumGray300),
                              SizedBox(height: 20.v),
                              Text("lbl_hotel_de_luna".tr,
                                  style: CustomTextStyles.bodyMediumGray300),
                              SizedBox(height: 20.v),
                              Text("lbl_the_heirs".tr,
                                  style: CustomTextStyles.bodyMediumGray300),
                              SizedBox(height: 21.v),
                              Text("msg_what_s_wrong_with".tr,
                                  style: CustomTextStyles.bodyMediumGray300),
                              SizedBox(height: 29.v),
                              _buildPopularSearch(),
                              SizedBox(height: 16.v),
                              _buildSearchTen()
                            ]))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        height: 48.v,
        centerTitle: true,
        title: AppbarTitleSearchviewOne(
            hintText: "msg_search_for_movies".tr,
            controller: controller.searchController));
  }

  /// Section Widget
  Widget _buildPopularSearch() {
    return Obx(() => CustomCheckboxButton(
        text: "lbl_popular_search".tr,
        value: controller.popularSearch.value,
        onChange: (value) {
          controller.popularSearch.value = value;
        }));
  }

  /// Section Widget
  Widget _buildSearchTen() {
    return SizedBox(
        height: 176.v,
        child: Obx(() => ListView.separated(
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) {
              return SizedBox(width: 16.h);
            },
            itemCount: controller
                .searchTenModelObj.value.searchtenItemList.value.length,
            itemBuilder: (context, index) {
              SearchtenItemModel model = controller
                  .searchTenModelObj.value.searchtenItemList.value[index];
              return SearchtenItemWidget(model, onTapMovieCard: () {
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
}
