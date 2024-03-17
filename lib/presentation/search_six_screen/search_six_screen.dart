import 'package:almohsen_s_application14/widgets/app_bar/custom_app_bar.dart';
import 'package:almohsen_s_application14/widgets/app_bar/appbar_title_searchview_one.dart';
import 'widgets/movieslist_item_widget.dart';
import 'models/movieslist_item_model.dart';
import 'widgets/movies6_item_widget.dart';
import 'models/movies6_item_model.dart';
import 'widgets/movies7_item_widget.dart';
import 'models/movies7_item_model.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application14/core/app_export.dart';
import 'controller/search_six_controller.dart';

class SearchSixScreen extends GetWidget<SearchSixController> {
  const SearchSixScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 18.v),
                    child: Padding(
                        padding: EdgeInsets.only(bottom: 5.v),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(left: 16.h),
                                  child: Text("msg_search_result_for2".tr,
                                      style: CustomTextStyles
                                          .titleMediumWhiteA70018)),
                              SizedBox(height: 28.v),
                              Padding(
                                  padding: EdgeInsets.only(left: 16.h),
                                  child: Text("lbl_movies".tr,
                                      style: theme.textTheme.titleSmall)),
                              SizedBox(height: 18.v),
                              _buildMoviesList(),
                              SizedBox(height: 26.v),
                              _buildNinetyEightColumn()
                            ]))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        height: 48.v,
        centerTitle: true,
        title: AppbarTitleSearchviewOne(
            hintText: "lbl_love".tr, controller: controller.searchController));
  }

  /// Section Widget
  Widget _buildMoviesList() {
    return SizedBox(
        height: 223.v,
        child: Obx(() => ListView.separated(
            padding: EdgeInsets.only(left: 16.h),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) {
              return SizedBox(width: 16.h);
            },
            itemCount: controller
                .searchSixModelObj.value.movieslistItemList.value.length,
            itemBuilder: (context, index) {
              MovieslistItemModel model = controller
                  .searchSixModelObj.value.movieslistItemList.value[index];
              return MovieslistItemWidget(model, onTapMovieCard: () {
                onTapMovieCard();
              });
            })));
  }

  /// Section Widget
  Widget _buildNinetyEightColumn() {
    return Padding(
        padding: EdgeInsets.only(left: 16.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("lbl_tv_channels".tr, style: theme.textTheme.titleSmall),
          SizedBox(height: 18.v),
          SizedBox(
              height: 223.v,
              child: Obx(() => ListView.separated(
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, index) {
                    return SizedBox(width: 16.h);
                  },
                  itemCount: controller
                      .searchSixModelObj.value.movies6ItemList.value.length,
                  itemBuilder: (context, index) {
                    Movies6ItemModel model = controller
                        .searchSixModelObj.value.movies6ItemList.value[index];
                    return Movies6ItemWidget(model, onTapMovieCard: () {
                      onTapMovieCard();
                    });
                  }))),
          SizedBox(height: 27.v),
          Text("lbl_playlist".tr, style: theme.textTheme.titleSmall),
          SizedBox(height: 17.v),
          SizedBox(
              height: 223.v,
              child: Obx(() => ListView.separated(
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, index) {
                    return SizedBox(width: 16.h);
                  },
                  itemCount: controller
                      .searchSixModelObj.value.movies7ItemList.value.length,
                  itemBuilder: (context, index) {
                    Movies7ItemModel model = controller
                        .searchSixModelObj.value.movies7ItemList.value[index];
                    return Movies7ItemWidget(model, onTapMovieCard: () {
                      onTapMovieCard();
                    });
                  })))
        ]));
  }

  /// Navigates to the detailPageSevenScreen when the action is triggered.
  onTapMovieCard() {
    Get.toNamed(
      AppRoutes.detailPageSevenScreen,
    );
  }
}
