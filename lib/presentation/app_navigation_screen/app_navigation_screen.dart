import 'package:flutter/material.dart';
import 'package:almohsen_s_application14/core/app_export.dart';
import 'controller/app_navigation_controller.dart';

// ignore_for_file: must_be_immutable
class AppNavigationScreen extends GetWidget<AppNavigationController> {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: 375.h,
          child: Column(
            children: [
              _buildAppNavigation(),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          screenTitle: "splash screen".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.splashScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "login ".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.loginScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Dashboard - Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.dashboardContainerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "See More Five".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.seeMoreFiveScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "See More Six".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.seeMoreSixScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "See More Seven".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.seeMoreSevenScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Detail Page Seven".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.detailPageSevenScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Detail Page Nine".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.detailPageNineScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Detail Page Ten".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.detailPageTenScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Detail Page Eleven".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.detailPageElevenScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Detail Page Twelve".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.detailPageTwelveScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Detail Page Eight".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.detailPageEightScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Explore Six".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.exploreSixScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Explore Seven".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.exploreSevenScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Explore Ten".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.exploreTenScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Explore Nine".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.exploreNineScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Channel Four".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.channelFourScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Channel Five".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.channelFiveScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Search Seven".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.searchSevenScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Search Ten".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.searchTenScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Search Six".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.searchSixScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Search Eight".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.searchEightScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Search Nine".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.searchNineScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation() {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app."
                    .tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle({
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(String routeName) {
    Get.toNamed(routeName);
  }
}
