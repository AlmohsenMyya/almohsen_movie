import 'package:almohsen_s_application14/widgets/app_bar/custom_app_bar.dart';
import 'package:almohsen_s_application14/widgets/app_bar/appbar_title.dart';
import 'package:almohsen_s_application14/widgets/app_bar/appbar_trailing_image.dart';
import 'package:almohsen_s_application14/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application14/core/app_export.dart';
import 'controller/account_five_controller.dart';
import 'models/account_five_model.dart';

class AccountFivePage extends StatelessWidget {
  AccountFivePage({Key? key})
      : super(
          key: key,
        );

  AccountFiveController controller =
      Get.put(AccountFiveController(AccountFiveModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 13.v),
            child: Container(
              margin: EdgeInsets.only(bottom: 5.v),
              padding: EdgeInsets.symmetric(horizontal: 16.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgLikedMoviesIcon,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 12.h,
                          bottom: 3.v,
                        ),
                        child: Text(
                          "lbl_liked_movies".tr,
                          style: CustomTextStyles.bodyLargeWhiteA700_1,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 24.v),
                  Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgNotificationIcon,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 12.h,
                          bottom: 3.v,
                        ),
                        child: Text(
                          "lbl_notification".tr,
                          style: CustomTextStyles.bodyLargeWhiteA700_1,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 24.v),
                  Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgMySubscription,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 12.h,
                          top: 3.v,
                        ),
                        child: Text(
                          "msg_my_subscription".tr,
                          style: CustomTextStyles.bodyLargeWhiteA700_1,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 24.v),
                  Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgTransactionHistory,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 12.h,
                          top: 3.v,
                        ),
                        child: Text(
                          "msg_transaction_history".tr,
                          style: CustomTextStyles.bodyLargeWhiteA700_1,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 24.v),
                  Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgProfileSettings,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 12.h,
                          top: 3.v,
                        ),
                        child: Text(
                          "msg_profile_settings".tr,
                          style: CustomTextStyles.bodyLargeWhiteA700_1,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 24.v),
                  Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgWatchHistoryIcon,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 12.h,
                          top: 3.v,
                        ),
                        child: Text(
                          "lbl_watch_history".tr,
                          style: CustomTextStyles.bodyLargeWhiteA700_1,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 24.v),
                  Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgFollowingIcon,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 12.h,
                          top: 3.v,
                        ),
                        child: Text(
                          "lbl_following".tr,
                          style: CustomTextStyles.bodyLargeWhiteA700_1,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 116.v),
                  CustomElevatedButton(
                    height: 50.v,
                    text: "lbl_logout".tr,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      height: 54.v,
      title: AppbarTitle(
        text: "lbl_account".tr,
        margin: EdgeInsets.only(left: 16.h),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgIcon1,
          margin: EdgeInsets.fromLTRB(16.h, 19.v, 16.h, 17.v),
        ),
      ],
    );
  }
}
