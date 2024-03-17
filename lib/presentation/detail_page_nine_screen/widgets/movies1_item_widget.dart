import '../models/movies1_item_model.dart';
import '../controller/detail_page_nine_controller.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application14/core/app_export.dart';

// ignore: must_be_immutable
class Movies1ItemWidget extends StatelessWidget {
  Movies1ItemWidget(
    this.movies1ItemModelObj, {
    Key? key,
    this.onTapMovieCard,
  }) : super(
          key: key,
        );

  Movies1ItemModel movies1ItemModelObj;

  var controller = Get.find<DetailPageNineController>();

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
                imagePath: movies1ItemModelObj.iONetflix!.value,
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
                movies1ItemModelObj.title!.value,
                style: theme.textTheme.labelLarge,
              ),
            ),
            SizedBox(height: 2.v),
            SizedBox(
              width: 120.h,
              child: Obx(
                () => Text(
                  movies1ItemModelObj.title1!.value,
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
