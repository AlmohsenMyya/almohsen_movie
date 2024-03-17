import '../models/turnerhooch_item_model.dart';
import '../controller/explore_seven_controller.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application14/core/app_export.dart';

// ignore: must_be_immutable
class TurnerhoochItemWidget extends StatelessWidget {
  TurnerhoochItemWidget(
    this.turnerhoochItemModelObj, {
    Key? key,
    this.onTapMovieCard,
  }) : super(
          key: key,
        );

  TurnerhoochItemModel turnerhoochItemModelObj;

  var controller = Get.find<ExploreSevenController>();

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
              imagePath: turnerhoochItemModelObj.turnerHooch!.value,
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
              turnerhoochItemModelObj.title!.value,
              style: theme.textTheme.labelLarge,
            ),
          ),
          SizedBox(height: 3.v),
          Obx(
            () => Text(
              turnerhoochItemModelObj.title1!.value,
              style: theme.textTheme.bodySmall,
            ),
          ),
        ],
      ),
    );
  }
}
