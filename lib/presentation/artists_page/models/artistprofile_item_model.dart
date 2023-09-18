import '../../../core/app_export.dart';

/// This class is used in the [artistprofile_item_widget] screen.
class ArtistprofileItemModel {
  ArtistprofileItemModel({
    this.userName,
    this.albumCount,
    this.id,
  }) {
    userName = userName ?? Rx("Lorn");
    albumCount = albumCount ?? Rx("23 albums");
    id = id ?? Rx("");
  }

  Rx<String>? userName;

  Rx<String>? albumCount;

  Rx<String>? id;
}
