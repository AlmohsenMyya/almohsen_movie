import '../models/specialslist2_item_model.dart';
import '../controller/dashboard_controller.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application14/core/app_export.dart';

// ignore: must_be_immutable
class Specialslist2ItemWidget extends StatelessWidget {
  Specialslist2ItemWidget(
    this.specialslist2ItemModelObj, {
    Key? key,
    this.onTapMovieCard,
  }) : super(
          key: key,
        );

  Specialslist2ItemModel specialslist2ItemModelObj;

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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Obx(
              () => CustomImageView(
                imagePath: specialslist2ItemModelObj.image!.value,
                height: 140.v,
                width: 90.h,
                radius: BorderRadius.circular(
                  2.h,
                ),
              ),
            ),
            SizedBox(height: 9.v),
            SizedBox(
              width: 65.h,
              child: Obx(
                () => Text(
                  specialslist2ItemModelObj.title!.value,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.bodySmallGray300.copyWith(
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
