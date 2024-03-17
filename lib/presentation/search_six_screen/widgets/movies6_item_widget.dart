import '../models/movies6_item_model.dart';
import '../controller/search_six_controller.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application14/core/app_export.dart';

// ignore: must_be_immutable
class Movies6ItemWidget extends StatelessWidget {
  Movies6ItemWidget(
    this.movies6ItemModelObj, {
    Key? key,
    this.onTapMovieCard,
  }) : super(
          key: key,
        );

  Movies6ItemModel movies6ItemModelObj;

  var controller = Get.find<SearchSixController>();

  VoidCallback? onTapMovieCard;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 120.h,
      child: GestureDetector(
        onTap: () {
          onTapMovieCard!.call();
        },
        child: Padding(
          padding: EdgeInsets.only(bottom: 1.v),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Obx(
                () => CustomImageView(
                  imagePath: movies6ItemModelObj.turnerHooch!.value,
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
                  movies6ItemModelObj.title!.value,
                  style: theme.textTheme.labelLarge,
                ),
              ),
              SizedBox(height: 3.v),
              Obx(
                () => Text(
                  movies6ItemModelObj.title1!.value,
                  style: theme.textTheme.bodySmall,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
