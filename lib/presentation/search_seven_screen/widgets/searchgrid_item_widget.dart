import '../models/searchgrid_item_model.dart';
import '../controller/search_seven_controller.dart';
import 'package:almohsen_s_application14/widgets/custom_rating_bar.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application14/core/app_export.dart';

// ignore: must_be_immutable
class SearchgridItemWidget extends StatelessWidget {
  SearchgridItemWidget(
    this.searchgridItemModelObj, {
    Key? key,
    this.onTapMovieCard,
  }) : super(
          key: key,
        );

  SearchgridItemModel searchgridItemModelObj;

  var controller = Get.find<SearchSevenController>();

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
              imagePath: searchgridItemModelObj.jallikatta!.value,
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
              searchgridItemModelObj.title!.value,
              style: CustomTextStyles.bodySmallGray300,
            ),
          ),
        ],
      ),
    );
  }
}
