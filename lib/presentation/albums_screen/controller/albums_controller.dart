import 'package:tejaswitandel_s_application149/core/app_export.dart';
import 'package:tejaswitandel_s_application149/presentation/albums_screen/models/albums_model.dart';

/// A controller class for the AlbumsScreen.
///
/// This class manages the state of the AlbumsScreen, including the
/// current albumsModelObj
class AlbumsController extends GetxController {
  Rx<AlbumsModel> albumsModelObj = AlbumsModel().obs;

  @override
  void onReady() {
    Future.delayed(const Duration(milliseconds: 3000), () {
      Get.offNamed(
        AppRoutes.artistScreen,
      );
    });
  }
}
