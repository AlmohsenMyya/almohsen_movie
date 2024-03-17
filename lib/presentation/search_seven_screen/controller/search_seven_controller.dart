import '../../../core/app_export.dart';
import '../models/search_seven_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the SearchSevenScreen.
///
/// This class manages the state of the SearchSevenScreen, including the
/// current searchSevenModelObj
class SearchSevenController extends GetxController {
  TextEditingController searchController = TextEditingController();

  Rx<SearchSevenModel> searchSevenModelObj = SearchSevenModel().obs;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
