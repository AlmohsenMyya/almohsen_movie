import '../../../core/app_export.dart';
import '../models/see_more_seven_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the SeeMoreSevenScreen.
///
/// This class manages the state of the SeeMoreSevenScreen, including the
/// current seeMoreSevenModelObj
class SeeMoreSevenController extends GetxController {
  TextEditingController searchController = TextEditingController();

  Rx<SeeMoreSevenModel> seeMoreSevenModelObj = SeeMoreSevenModel().obs;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
