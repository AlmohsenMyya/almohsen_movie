import 'package:almohsen_s_application14/widgets/custom_search_view.dart';
import 'widgets/searchgrid_item_widget.dart';
import 'models/searchgrid_item_model.dart';
import 'models/chipview2_item_model.dart';
import '../search_seven_screen/widgets/chipview2_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application14/core/app_export.dart';
import 'controller/search_seven_controller.dart';

class SearchSevenScreen extends GetWidget<SearchSevenController> {
  const SearchSevenScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 8.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Container(
                              margin: EdgeInsets.only(bottom: 118.v),
                              padding: EdgeInsets.symmetric(horizontal: 16.h),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomSearchView(
                                        controller: controller.searchController,
                                        hintText: "lbl_love".tr),
                                    SizedBox(height: 14.v),
                                    Text("msg_search_result_for".tr,
                                        style: CustomTextStyles
                                            .titleMediumWhiteA70018),
                                    SizedBox(height: 29.v),
                                    Text("lbl_movies_6".tr,
                                        style: theme.textTheme.titleSmall),
                                    SizedBox(height: 11.v),
                                    _buildSearchGrid(),
                                    SizedBox(height: 30.v),
                                    Text("lbl_cast_4".tr,
                                        style: theme.textTheme.titleSmall),
                                    SizedBox(height: 17.v),
                                    _buildChipView(),
                                    SizedBox(height: 37.v),
                                    Text("lbl_categories_1".tr,
                                        style: theme.textTheme.titleSmall),
                                    SizedBox(height: 17.v),
                                    SizedBox(
                                        height: 60.v,
                                        width: 90.h,
                                        child: Stack(
                                            alignment: Alignment.center,
                                            children: [
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgThumbnailImage33,
                                                  height: 60.v,
                                                  width: 90.h,
                                                  radius: BorderRadius.circular(
                                                      2.h),
                                                  alignment: Alignment.center),
                                              Align(
                                                  alignment: Alignment.center,
                                                  child: Opacity(
                                                      opacity: 0.87,
                                                      child: Text("lbl_love".tr,
                                                          style: theme.textTheme
                                                              .bodyMedium)))
                                            ]))
                                  ]))))
                ]))));
  }

  /// Section Widget
  Widget _buildSearchGrid() {
    return Obx(() => GridView.builder(
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisExtent: 177.v,
            crossAxisCount: 3,
            mainAxisSpacing: 16.h,
            crossAxisSpacing: 16.h),
        physics: NeverScrollableScrollPhysics(),
        itemCount: controller
            .searchSevenModelObj.value.searchgridItemList.value.length,
        itemBuilder: (context, index) {
          SearchgridItemModel model = controller
              .searchSevenModelObj.value.searchgridItemList.value[index];
          return SearchgridItemWidget(model, onTapMovieCard: () {
            onTapMovieCard();
          });
        }));
  }

  /// Section Widget
  Widget _buildChipView() {
    return Obx(() => Wrap(
        runSpacing: 8.v,
        spacing: 8.h,
        children: List<Widget>.generate(
            controller.searchSevenModelObj.value.chipview2ItemList.value.length,
            (index) {
          Chipview2ItemModel model = controller
              .searchSevenModelObj.value.chipview2ItemList.value[index];
          return Chipview2ItemWidget(model);
        })));
  }

  /// Navigates to the detailPageSevenScreen when the action is triggered.
  onTapMovieCard() {
    Get.toNamed(
      AppRoutes.detailPageSevenScreen,
    );
  }
}
