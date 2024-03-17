import '../../../core/app_export.dart';
import '../models/search_six_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the SearchSixScreen.
///
/// This class manages the state of the SearchSixScreen, including the
/// current searchSixModelObj
class SearchSixController extends GetxController {
  TextEditingController searchController = TextEditingController();

  Rx<SearchSixModel> searchSixModelObj = SearchSixModel().obs;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
