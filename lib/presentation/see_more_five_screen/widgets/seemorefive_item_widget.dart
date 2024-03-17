import '../models/seemorefive_item_model.dart';
import '../controller/see_more_five_controller.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application14/core/app_export.dart';

// ignore: must_be_immutable
class SeemorefiveItemWidget extends StatelessWidget {
  SeemorefiveItemWidget(
    this.seemorefiveItemModelObj, {
    Key? key,
    this.onTapMovieCard,
  }) : super(
          key: key,
        );

  SeemorefiveItemModel seemorefiveItemModelObj;

  var controller = Get.find<SeeMoreFiveController>();

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
              imagePath: seemorefiveItemModelObj.darkTower!.value,
              height: 140.v,
              width: 98.h,
              radius: BorderRadius.circular(
                2.h,
              ),
            ),
          ),
          SizedBox(height: 9.v),
          Obx(
            () => Text(
              seemorefiveItemModelObj.title!.value,
              style: CustomTextStyles.bodySmallGray300,
            ),
          ),
        ],
      ),
    );
  }
}
