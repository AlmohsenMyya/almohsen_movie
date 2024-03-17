import '../../../core/app_export.dart';

/// This class is used in the [channelsix_item_widget] screen.
class ChannelsixItemModel {
  ChannelsixItemModel({
    this.header,
    this.time,
    this.id,
  }) {
    header = header ?? Rx("Last time we meet");
    time = time ?? Rx("02:00 AM (EST)");
    id = id ?? Rx("");
  }

  Rx<String>? header;

  Rx<String>? time;

  Rx<String>? id;
}
