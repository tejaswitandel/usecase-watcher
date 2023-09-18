import 'package:tejaswitandel_s_application149/core/app_export.dart';
import 'package:tejaswitandel_s_application149/presentation/artists_page/models/artists_model.dart';

/// A controller class for the ArtistsPage.
///
/// This class manages the state of the ArtistsPage, including the
/// current artistsModelObj
class ArtistsController extends GetxController {
  ArtistsController(this.artistsModelObj);

  Rx<ArtistsModel> artistsModelObj;
}
