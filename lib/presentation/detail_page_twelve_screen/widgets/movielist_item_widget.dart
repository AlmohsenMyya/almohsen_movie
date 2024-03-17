import '../models/movielist_item_model.dart';
import '../controller/detail_page_twelve_controller.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application14/core/app_export.dart';

// ignore: must_be_immutable
class MovielistItemWidget extends StatelessWidget {
  MovielistItemWidget(
    this.movielistItemModelObj, {
    Key? key,
    this.onTapMovieCard,
  }) : super(
          key: key,
        );

  MovielistItemModel movielistItemModelObj;

  var controller = Get.find<DetailPageTwelveController>();

  VoidCallback? onTapMovieCard;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 120.h,
      child: GestureDetector(
        onTap: () {
          onTapMovieCard!.call();
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Obx(
              () => CustomImageView(
                imagePath: movielistItemModelObj.iONetflix!.value,
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
                movielistItemModelObj.title!.value,
                style: theme.textTheme.labelLarge,
              ),
            ),
            SizedBox(height: 2.v),
            SizedBox(
              width: 120.h,
              child: Obx(
                () => Text(
                  movielistItemModelObj.title1!.value,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.bodySmall!.copyWith(
                    height: 1.50,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
