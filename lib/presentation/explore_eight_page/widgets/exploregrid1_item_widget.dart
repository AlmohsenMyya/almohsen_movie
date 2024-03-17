import '../models/exploregrid1_item_model.dart';
import '../controller/explore_eight_controller.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application14/core/app_export.dart';

// ignore: must_be_immutable
class Exploregrid1ItemWidget extends StatelessWidget {
  Exploregrid1ItemWidget(
    this.exploregrid1ItemModelObj, {
    Key? key,
    this.onTapMovieCard,
  }) : super(
          key: key,
        );

  Exploregrid1ItemModel exploregrid1ItemModelObj;

  var controller = Get.find<ExploreEightController>();

  VoidCallback? onTapMovieCard;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapMovieCard!.call();
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Obx(
            () => CustomImageView(
              imagePath: exploregrid1ItemModelObj.io!.value,
              height: 180.v,
              width: 120.h,
              radius: BorderRadius.circular(
                2.h,
              ),
            ),
          ),
          SizedBox(height: 9.v),
          Obx(
            () => Text(
              exploregrid1ItemModelObj.title!.value,
              style: CustomTextStyles.labelLargeWhiteA700,
            ),
          ),
          SizedBox(height: 2.v),
          Obx(
            () => Text(
              exploregrid1ItemModelObj.title1!.value,
              style: theme.textTheme.bodySmall,
            ),
          ),
        ],
      ),
    );
  }
}
