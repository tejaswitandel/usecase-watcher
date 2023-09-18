import 'package:tejaswitandel_s_application149/core/app_export.dart';
import 'package:tejaswitandel_s_application149/presentation/artist_screen/models/artist_model.dart';

/// A controller class for the ArtistScreen.
///
/// This class manages the state of the ArtistScreen, including the
/// current artistModelObj
class ArtistController extends GetxController {
  Rx<ArtistModel> artistModelObj = ArtistModel().obs;
}
