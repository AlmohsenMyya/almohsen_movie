import 'package:flutter/material.dart';
import 'package:almohsen_s_application14/core/app_export.dart';
import 'controller/splash_controller.dart';

class SplashScreen extends GetWidget<SplashController> {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            body: Container(
                width: SizeUtils.width,
                height: SizeUtils.height,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(ImageConstant.imgSplashScreen),
                        fit: BoxFit.cover)),
                child: SizedBox(
                    width: double.maxFinite,
                    child: Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 56.h, vertical: 225.v),
                        decoration: AppDecoration.gradientGrayToOnPrimary,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("lbl_get_started".tr,
                                  style: theme.textTheme.headlineLarge),
                              SizedBox(height: 16.v),
                              SizedBox(
                                  width: 247.h,
                                  child: Text("msg_watch_your_favourite".tr,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                      style: CustomTextStyles.bodyLargeWhiteA700
                                          .copyWith(height: 1.50))),
                              SizedBox(height: 36.v)
                            ]))))));
  }
}
