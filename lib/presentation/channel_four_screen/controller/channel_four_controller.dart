import '../../../core/app_export.dart';
import '../models/channel_four_model.dart';

/// A controller class for the ChannelFourScreen.
///
/// This class manages the state of the ChannelFourScreen, including the
/// current channelFourModelObj
class ChannelFourController extends GetxController {
  Rx<ChannelFourModel> channelFourModelObj = ChannelFourModel().obs;
}
