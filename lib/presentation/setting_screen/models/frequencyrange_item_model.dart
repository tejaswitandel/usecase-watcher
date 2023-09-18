import '../../../core/app_export.dart';

/// This class is used in the [frequencyrange_item_widget] screen.
class FrequencyrangeItemModel {
  FrequencyrangeItemModel({
    this.dBValue,
    this.hzValue,
    this.id,
  }) {
    dBValue = dBValue ?? Rx("4 dB");
    hzValue = hzValue ?? Rx("60 Hz");
    id = id ?? Rx("");
  }

  Rx<String>? dBValue;

  Rx<String>? hzValue;

  Rx<String>? id;
}
