import '../models/chipview_item_model.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application14/core/app_export.dart';

// ignore: must_be_immutable
class ChipviewItemWidget extends StatelessWidget {
  ChipviewItemWidget(
    this.chipviewItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ChipviewItemModel chipviewItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => RawChip(
        padding: EdgeInsets.symmetric(
          horizontal: 10.h,
          vertical: 9.v,
        ),
        showCheckmark: false,
        labelPadding: EdgeInsets.zero,
        label: Text(
          chipviewItemModelObj.tags!.value,
          style: TextStyle(
            color: appTheme.whiteA700.withOpacity(0.66),
            fontSize: 12.fSize,
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w400,
          ),
        ),
        selected: (chipviewItemModelObj.isSelected?.value ?? false),
        backgroundColor: theme.colorScheme.onSecondaryContainer,
        selectedColor: theme.colorScheme.onSecondaryContainer,
        shape: (chipviewItemModelObj.isSelected?.value ?? false)
            ? RoundedRectangleBorder(
                side: BorderSide(
                  color:
                      theme.colorScheme.onSecondaryContainer.withOpacity(0.6),
                  width: 1.h,
                ),
                borderRadius: BorderRadius.circular(
                  17.h,
                ),
              )
            : RoundedRectangleBorder(
                side: BorderSide(
                  color: theme.colorScheme.primary,
                  width: 1.h,
                ),
                borderRadius: BorderRadius.circular(
                  17.h,
                ),
              ),
        onSelected: (value) {
          chipviewItemModelObj.isSelected!.value = value;
        },
      ),
    );
  }
}
