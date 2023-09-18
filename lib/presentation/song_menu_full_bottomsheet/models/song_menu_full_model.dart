import '../../../core/app_export.dart';
import 'addtoplaylist_item_model.dart';

/// This class defines the variables used in the [song_menu_full_bottomsheet],
/// and is typically used to hold data that is passed between different parts of the application.
class SongMenuFullModel {
  Rx<List<AddtoplaylistItemModel>> addtoplaylistItemList =
      Rx(List.generate(6, (index) => AddtoplaylistItemModel()));
}
