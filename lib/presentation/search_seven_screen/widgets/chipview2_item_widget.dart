import '../models/chipview2_item_model.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application14/core/app_export.dart';

// ignore: must_be_immutable
class Chipview2ItemWidget extends StatelessWidget {
  Chipview2ItemWidget(
    this.chipview2ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Chipview2ItemModel chipview2ItemModelObj;

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
          chipview2ItemModelObj.tags!.value,
          style: TextStyle(
            color: appTheme.whiteA700.withOpacity(0.66),
            fontSize: 12.fSize,
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w400,
          ),
        ),
        selected: (chipview2ItemModelObj.isSelected?.value ?? false),
        backgroundColor: theme.colorScheme.onSecondaryContainer,
        selectedColor: theme.colorScheme.onSecondaryContainer,
        shape: (chipview2ItemModelObj.isSelected?.value ?? false)
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
          chipview2ItemModelObj.isSelected!.value = value;
        },
      ),
    );
  }
}
