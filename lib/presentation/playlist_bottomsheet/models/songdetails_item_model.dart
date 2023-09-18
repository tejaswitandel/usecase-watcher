import '../../../core/app_export.dart';

/// This class is used in the [songdetails_item_widget] screen.
class SongdetailsItemModel {
  SongdetailsItemModel({
    this.flashbacksText,
    this.emikaText,
    this.id,
  }) {
    flashbacksText = flashbacksText ?? Rx("Flashbacks");
    emikaText = emikaText ?? Rx("Emika");
    id = id ?? Rx("");
  }

  Rx<String>? flashbacksText;

  Rx<String>? emikaText;

  Rx<String>? id;
}
