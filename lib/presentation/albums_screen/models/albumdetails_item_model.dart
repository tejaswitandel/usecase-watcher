import '../../../core/app_export.dart';

/// This class is used in the [albumdetails_item_widget] screen.
class AlbumdetailsItemModel {
  AlbumdetailsItemModel({
    this.songName,
    this.artistName,
    this.id,
  }) {
    songName = songName ?? Rx("Flower Power");
    artistName = artistName ?? Rx("Ray Charles");
    id = id ?? Rx("");
  }

  Rx<String>? songName;

  Rx<String>? artistName;

  Rx<String>? id;
}
