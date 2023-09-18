import '../../../core/app_export.dart';
import 'songdetails1_item_model.dart';

/// This class defines the variables used in the [album_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class AlbumModel {
  Rx<List<Songdetails1ItemModel>> songdetails1ItemList =
      Rx(List.generate(4, (index) => Songdetails1ItemModel()));
}
