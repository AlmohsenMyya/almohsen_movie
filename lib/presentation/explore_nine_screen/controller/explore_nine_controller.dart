import '../../../core/app_export.dart';
import '../models/explore_nine_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the ExploreNineScreen.
///
/// This class manages the state of the ExploreNineScreen, including the
/// current exploreNineModelObj
class ExploreNineController extends GetxController {
  TextEditingController searchController = TextEditingController();

  Rx<ExploreNineModel> exploreNineModelObj = ExploreNineModel().obs;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
