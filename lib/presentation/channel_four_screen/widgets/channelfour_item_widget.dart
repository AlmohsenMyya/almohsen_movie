import '../models/channelfour_item_model.dart';
import '../controller/channel_four_controller.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application14/core/app_export.dart';

// ignore: must_be_immutable
class ChannelfourItemWidget extends StatelessWidget {
  ChannelfourItemWidget(
    this.channelfourItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ChannelfourItemModel channelfourItemModelObj;

  var controller = Get.find<ChannelFourController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Obx(
          () => CustomImageView(
            imagePath: channelfourItemModelObj.ktv!.value,
            height: 56.adaptSize,
            width: 56.adaptSize,
            radius: BorderRadius.circular(
              4.h,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 16.h,
            top: 17.v,
            bottom: 19.v,
          ),
          child: Obx(
            () => Text(
              channelfourItemModelObj.kTV1!.value,
              style: CustomTextStyles.titleMediumWhiteA700Medium,
            ),
          ),
        ),
      ],
    );
  }
}
