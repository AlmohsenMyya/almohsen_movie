import '../models/searchten_item_model.dart';
import '../controller/search_ten_controller.dart';
import 'package:almohsen_s_application14/widgets/custom_rating_bar.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application14/core/app_export.dart';

// ignore: must_be_immutable
class SearchtenItemWidget extends StatelessWidget {
  SearchtenItemWidget(
    this.searchtenItemModelObj, {
    Key? key,
    this.onTapMovieCard,
  }) : super(
          key: key,
        );

  SearchtenItemModel searchtenItemModelObj;

  var controller = Get.find<SearchTenController>();

  VoidCallback? onTapMovieCard;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 98.h,
      child: GestureDetector(
        onTap: () {
          onTapMovieCard!.call();
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Obx(
              () => CustomImageView(
                imagePath: searchtenItemModelObj.jallikatta!.value,
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
                searchtenItemModelObj.title!.value,
                style: CustomTextStyles.bodySmallGray300,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
