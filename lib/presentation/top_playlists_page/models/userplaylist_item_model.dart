import '../../../core/app_export.dart';

/// This class is used in the [userplaylist_item_widget] screen.
class UserplaylistItemModel {
  UserplaylistItemModel({
    this.playlistName,
    this.id,
  }) {
    playlistName = playlistName ?? Rx("Renaissance");
    id = id ?? Rx("");
  }

  Rx<String>? playlistName;

  Rx<String>? id;
}
