import '../controller/album_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AlbumScreen.
///
/// This class ensures that the AlbumController is created when the
/// AlbumScreen is first loaded.
class AlbumBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AlbumController());
  }
}
