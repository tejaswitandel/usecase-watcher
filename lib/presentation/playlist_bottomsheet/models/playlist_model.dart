import '../../../core/app_export.dart';
import 'songdetails_item_model.dart';

/// This class defines the variables used in the [playlist_bottomsheet],
/// and is typically used to hold data that is passed between different parts of the application.
class PlaylistModel {
  Rx<List<SongdetailsItemModel>> songdetailsItemList =
      Rx(List.generate(8, (index) => SongdetailsItemModel()));
}
