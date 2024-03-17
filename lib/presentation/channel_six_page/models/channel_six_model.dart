import '../../../core/app_export.dart';
import 'channelsix_item_model.dart';

/// This class defines the variables used in the [channel_six_page],
/// and is typically used to hold data that is passed between different parts of the application.
class ChannelSixModel {
  Rx<List<ChannelsixItemModel>> channelsixItemList = Rx([
    ChannelsixItemModel(
        header: "Last time we meet".obs, time: "02:00 AM (EST)".obs),
    ChannelsixItemModel(header: "Pain".obs, time: "05:00 AM (EST)".obs),
    ChannelsixItemModel(
        header: "I Don't Think So".obs, time: "06:00 AM (EST)".obs),
    ChannelsixItemModel(
        header: "Love You More".obs, time: "04:00 AM (EST)".obs),
    ChannelsixItemModel(header: "War".obs, time: "08:00 AM (EST)".obs)
  ]);
}
