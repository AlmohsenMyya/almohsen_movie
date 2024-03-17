import '../../../core/app_export.dart';
import '../models/search_ten_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the SearchTenScreen.
///
/// This class manages the state of the SearchTenScreen, including the
/// current searchTenModelObj
class SearchTenController extends GetxController {
  TextEditingController searchController = TextEditingController();

  Rx<SearchTenModel> searchTenModelObj = SearchTenModel().obs;

  Rx<bool> popularSearch = false.obs;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
