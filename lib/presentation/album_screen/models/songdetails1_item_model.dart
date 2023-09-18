import '../../../core/app_export.dart';

/// This class is used in the [songdetails1_item_widget] screen.
class Songdetails1ItemModel {
  Songdetails1ItemModel({
    this.count,
    this.burning,
    this.podvalCaplella,
    this.id,
  }) {
    count = count ?? Rx("1");
    burning = burning ?? Rx("Burning");
    podvalCaplella = podvalCaplella ?? Rx("Podval Caplella");
    id = id ?? Rx("");
  }

  Rx<String>? count;

  Rx<String>? burning;

  Rx<String>? podvalCaplella;

  Rx<String>? id;
}
