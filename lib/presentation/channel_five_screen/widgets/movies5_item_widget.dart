import '../models/movies5_item_model.dart';
import '../controller/channel_five_controller.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application14/core/app_export.dart';

// ignore: must_be_immutable
class Movies5ItemWidget extends StatelessWidget {
  Movies5ItemWidget(
    this.movies5ItemModelObj, {
    Key? key,
    this.onTapMovieCard,
  }) : super(
          key: key,
        );

  Movies5ItemModel movies5ItemModelObj;

  var controller = Get.find<ChannelFiveController>();

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
                  imagePath: movies5ItemModelObj.turnerHooch!.value,
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
                  movies5ItemModelObj.title!.value,
                  style: theme.textTheme.labelLarge,
                ),
              ),
              SizedBox(height: 3.v),
              Obx(
                () => Text(
                  movies5ItemModelObj.title1!.value,
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
