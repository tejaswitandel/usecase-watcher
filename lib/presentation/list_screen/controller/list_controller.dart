import 'package:tejaswitandel_s_application149/core/app_export.dart';
import 'package:tejaswitandel_s_application149/presentation/list_screen/models/list_model.dart';

/// A controller class for the ListScreen.
///
/// This class manages the state of the ListScreen, including the
/// current listModelObj
class ListController extends GetxController {
  Rx<ListModel> listModelObj = ListModel().obs;
}
