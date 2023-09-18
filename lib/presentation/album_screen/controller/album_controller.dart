import 'package:tejaswitandel_s_application149/core/app_export.dart';
import 'package:tejaswitandel_s_application149/presentation/album_screen/models/album_model.dart';

/// A controller class for the AlbumScreen.
///
/// This class manages the state of the AlbumScreen, including the
/// current albumModelObj
class AlbumController extends GetxController {
  Rx<AlbumModel> albumModelObj = AlbumModel().obs;
}
