import '../models/explorenine_item_model.dart';
import '../controller/explore_nine_controller.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application14/core/app_export.dart';

// ignore: must_be_immutable
class ExplorenineItemWidget extends StatelessWidget {
  ExplorenineItemWidget(
    this.explorenineItemModelObj, {
    Key? key,
    this.onTapMovieCard,
  }) : super(
          key: key,
        );

  ExplorenineItemModel explorenineItemModelObj;

  var controller = Get.find<ExploreNineController>();

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
              imagePath: explorenineItemModelObj.io!.value,
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
              explorenineItemModelObj.title!.value,
              style: CustomTextStyles.labelLargeWhiteA700,
            ),
          ),
          SizedBox(height: 2.v),
          Obx(
            () => Text(
              explorenineItemModelObj.title1!.value,
              style: theme.textTheme.bodySmall,
            ),
          ),
        ],
      ),
    );
  }
}
