import '../models/seemoreseven_item_model.dart';
import '../controller/see_more_seven_controller.dart';
import 'package:almohsen_s_application14/widgets/custom_rating_bar.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application14/core/app_export.dart';

// ignore: must_be_immutable
class SeemoresevenItemWidget extends StatelessWidget {
  SeemoresevenItemWidget(
    this.seemoresevenItemModelObj, {
    Key? key,
    this.onTapMovieCard,
  }) : super(
          key: key,
        );

  SeemoresevenItemModel seemoresevenItemModelObj;

  var controller = Get.find<SeeMoreSevenController>();

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
              imagePath: seemoresevenItemModelObj.jallikatta!.value,
              height: 140.v,
              width: 98.h,
              radius: BorderRadius.circular(
                2.h,
              ),
            ),
          ),
          SizedBox(height: 8.v),
          CustomRatingBar(
            ignoreGestures: true,
            initialRating: 0,
          ),
          SizedBox(height: 5.v),
          Obx(
            () => Text(
              seemoresevenItemModelObj.title!.value,
              style: CustomTextStyles.bodySmallGray300,
            ),
          ),
        ],
      ),
    );
  }
}
