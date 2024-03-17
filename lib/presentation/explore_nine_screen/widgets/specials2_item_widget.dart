import '../models/specials2_item_model.dart';
import '../controller/explore_nine_controller.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application14/core/app_export.dart';

// ignore: must_be_immutable
class Specials2ItemWidget extends StatelessWidget {
  Specials2ItemWidget(
    this.specials2ItemModelObj, {
    Key? key,
    this.onTapImgDrama,
  }) : super(
          key: key,
        );

  Specials2ItemModel specials2ItemModelObj;

  var controller = Get.find<ExploreNineController>();

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
              imagePath: specials2ItemModelObj.drama!.value,
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
                  specials2ItemModelObj.drama1!.value,
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
