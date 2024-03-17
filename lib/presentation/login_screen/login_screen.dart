import 'package:almohsen_s_application14/widgets/app_bar/custom_app_bar.dart';
import 'package:almohsen_s_application14/widgets/app_bar/appbar_leading_image.dart';
import 'package:almohsen_s_application14/core/utils/validation_functions.dart';
import 'package:almohsen_s_application14/widgets/custom_text_form_field.dart';
import 'package:almohsen_s_application14/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application14/core/app_export.dart';
import 'controller/login_controller.dart';

// ignore_for_file: must_be_immutable
class LoginScreen extends GetWidget<LoginController> {
  LoginScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Form(
                        key: _formKey,
                        child: Container(
                            width: double.maxFinite,
                            padding: EdgeInsets.symmetric(
                                horizontal: 16.h, vertical: 32.v),
                            child: Column(children: [
                              SizedBox(height: 22.v),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text("lbl_log_in".tr,
                                      style: theme.textTheme.headlineLarge)),
                              SizedBox(height: 18.v),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text("msg_put_your_email_address".tr,
                                      style:
                                          CustomTextStyles.bodyLargeWhiteA700)),
                              SizedBox(height: 43.v),
                              CustomTextFormField(
                                  controller: controller.emailController,
                                  hintText: "lbl_your_email".tr,
                                  textInputType: TextInputType.emailAddress,
                                  prefix: Container(
                                      margin: EdgeInsets.fromLTRB(
                                          16.h, 12.v, 10.h, 12.v),
                                      child: CustomImageView(
                                          imagePath: ImageConstant.imgIcon,
                                          height: 24.adaptSize,
                                          width: 24.adaptSize)),
                                  prefixConstraints:
                                      BoxConstraints(maxHeight: 48.v),
                                  validator: (value) {
                                    if (value == null ||
                                        (!isValidEmail(value,
                                            isRequired: true))) {
                                      return "err_msg_please_enter_valid_email"
                                          .tr;
                                    }
                                    return null;
                                  }),
                              SizedBox(height: 16.v),
                              CustomTextFormField(
                                  controller: controller.passwordController,
                                  hintText: "lbl_password".tr,
                                  textInputAction: TextInputAction.done,
                                  textInputType: TextInputType.visiblePassword,
                                  prefix: Container(
                                      margin: EdgeInsets.fromLTRB(
                                          16.h, 12.v, 10.h, 12.v),
                                      child: CustomImageView(
                                          imagePath: ImageConstant.imgLocation,
                                          height: 24.adaptSize,
                                          width: 24.adaptSize)),
                                  prefixConstraints:
                                      BoxConstraints(maxHeight: 48.v),
                                  validator: (value) {
                                    if (value == null ||
                                        (!isValidPassword(value,
                                            isRequired: true))) {
                                      return "err_msg_please_enter_valid_password"
                                          .tr;
                                    }
                                    return null;
                                  },
                                  obscureText: true),
                              SizedBox(height: 16.v),
                              CustomElevatedButton(
                                  height: 50.v,
                                  text: "lbl_login2".tr,
                                  onPressed: () {
                                    onTapLogin();
                                  }),
                              Spacer(),
                              Text("msg_don_t_have_an_account".tr,
                                  style: CustomTextStyles.bodySmallGray300)
                            ])))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: double.maxFinite,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgFrame20,
            margin: EdgeInsets.only(left: 16.h, right: 320.h),
            onTap: () {
              onTapImage();
            }));
  }

  /// Navigates to the previous screen.
  onTapImage() {
    Get.back();
  }

  /// Navigates to the dashboardContainerScreen when the action is triggered.
  onTapLogin() {
    Get.toNamed(
      AppRoutes.dashboardContainerScreen,
    );
  }
}
