import '../../../core/app_export.dart';
import 'userplaylist_item_model.dart';

/// This class defines the variables used in the [top_playlists_page],
/// and is typically used to hold data that is passed between different parts of the application.
class TopPlaylistsModel {
  Rx<List<UserplaylistItemModel>> userplaylistItemList =
      Rx(List.generate(3, (index) => UserplaylistItemModel()));
}
