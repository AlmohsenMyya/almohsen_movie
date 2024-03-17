import '../models/specials1_item_model.dart';
import '../controller/explore_eight_controller.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application14/core/app_export.dart';

// ignore: must_be_immutable
class Specials1ItemWidget extends StatelessWidget {
  Specials1ItemWidget(
    this.specials1ItemModelObj, {
    Key? key,
    this.onTapImgDrama,
  }) : super(
          key: key,
        );

  Specials1ItemModel specials1ItemModelObj;

  var controller = Get.find<ExploreEightController>();

  VoidCallback? onTapImgDrama;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60.v,
      width: 90.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Obx(
            () => CustomImageView(
              imagePath: specials1ItemModelObj.drama!.value,
              height: 60.v,
              width: 90.h,
              radius: BorderRadius.circular(
                2.h,
              ),
              alignment: Alignment.center,
              onTap: () {
                onTapImgDrama!.call();
              },
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Opacity(
              opacity: 0.87,
              child: Obx(
                () => Text(
                  specials1ItemModelObj.drama1!.value,
                  style: theme.textTheme.bodyMedium,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
