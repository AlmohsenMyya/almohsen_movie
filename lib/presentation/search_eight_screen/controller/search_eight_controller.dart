import '../../../core/app_export.dart';
import '../models/search_eight_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the SearchEightScreen.
///
/// This class manages the state of the SearchEightScreen, including the
/// current searchEightModelObj
class SearchEightController extends GetxController {
  TextEditingController searchController = TextEditingController();

  Rx<SearchEightModel> searchEightModelObj = SearchEightModel().obs;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
