import '../models/channelsix_item_model.dart';
import '../controller/channel_six_controller.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application14/core/app_export.dart';

// ignore: must_be_immutable
class ChannelsixItemWidget extends StatelessWidget {
  ChannelsixItemWidget(
    this.channelsixItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ChannelsixItemModel channelsixItemModelObj;

  var controller = Get.find<ChannelSixController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Obx(
          () => Text(
            channelsixItemModelObj.header!.value,
            style: CustomTextStyles.titleMediumWhiteA700Medium,
          ),
        ),
        SizedBox(height: 9.v),
        Obx(
          () => Text(
            channelsixItemModelObj.time!.value,
            style: CustomTextStyles.bodyMediumOnPrimaryContainer,
          ),
        ),
      ],
    );
  }
}
