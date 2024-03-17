import '../../../core/app_export.dart';
import '../models/channel_five_model.dart';

/// A controller class for the ChannelFiveScreen.
///
/// This class manages the state of the ChannelFiveScreen, including the
/// current channelFiveModelObj
class ChannelFiveController extends GetxController {
  Rx<ChannelFiveModel> channelFiveModelObj = ChannelFiveModel().obs;
}
