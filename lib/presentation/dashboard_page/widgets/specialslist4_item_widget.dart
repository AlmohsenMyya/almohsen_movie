import '../models/specialslist4_item_model.dart';
import '../controller/dashboard_controller.dart';
import 'package:almohsen_s_application14/widgets/custom_rating_bar.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application14/core/app_export.dart';

// ignore: must_be_immutable
class Specialslist4ItemWidget extends StatelessWidget {
  Specialslist4ItemWidget(
    this.specialslist4ItemModelObj, {
    Key? key,
    this.onTapMovieCard,
  }) : super(
          key: key,
        );

  Specialslist4ItemModel specialslist4ItemModelObj;

  var controller = Get.find<DashboardController>();

  VoidCallback? onTapMovieCard;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 90.h,
      child: GestureDetector(
        onTap: () {
          onTapMovieCard!.call();
        },
        child: Padding(
          padding: EdgeInsets.only(bottom: 20.v),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Obx(
                () => CustomImageView(
                  imagePath: specialslist4ItemModelObj.lukas!.value,
                  height: 140.v,
                  width: 90.h,
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
                  specialslist4ItemModelObj.title!.value,
                  style: CustomTextStyles.bodySmallGray300,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
