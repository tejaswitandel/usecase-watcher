import '../../../core/app_export.dart';
import 'artistprofile_item_model.dart';

/// This class defines the variables used in the [artists_page],
/// and is typically used to hold data that is passed between different parts of the application.
class ArtistsModel {
  Rx<List<ArtistprofileItemModel>> artistprofileItemList =
      Rx(List.generate(6, (index) => ArtistprofileItemModel()));
}
