import '../../../core/app_export.dart';
import 'albumdetails_item_model.dart';

/// This class defines the variables used in the [albums_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class AlbumsModel {
  Rx<List<AlbumdetailsItemModel>> albumdetailsItemList =
      Rx(List.generate(6, (index) => AlbumdetailsItemModel()));
}
