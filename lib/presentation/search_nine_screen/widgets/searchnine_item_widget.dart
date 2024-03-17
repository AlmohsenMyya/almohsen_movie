import '../models/searchnine_item_model.dart';
import '../controller/search_nine_controller.dart';
import 'package:almohsen_s_application14/widgets/custom_rating_bar.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application14/core/app_export.dart';

// ignore: must_be_immutable
class SearchnineItemWidget extends StatelessWidget {
  SearchnineItemWidget(
    this.searchnineItemModelObj, {
    Key? key,
    this.onTapMovieCard,
  }) : super(
          key: key,
        );

  SearchnineItemModel searchnineItemModelObj;

  var controller = Get.find<SearchNineController>();

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
              imagePath: searchnineItemModelObj.jallikatta!.value,
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
              searchnineItemModelObj.title!.value,
              style: CustomTextStyles.bodySmallGray300,
            ),
          ),
        ],
      ),
    );
  }
}
