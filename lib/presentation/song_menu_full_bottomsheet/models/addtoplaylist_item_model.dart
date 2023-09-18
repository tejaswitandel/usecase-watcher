import '../../../core/app_export.dart';

/// This class is used in the [addtoplaylist_item_widget] screen.
class AddtoplaylistItemModel {
  AddtoplaylistItemModel({
    this.addtoplaylist,
    this.id,
  }) {
    addtoplaylist = addtoplaylist ?? Rx("Add to Playlist");
    id = id ?? Rx("");
  }

  Rx<String>? addtoplaylist;

  Rx<String>? id;
}
