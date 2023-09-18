import '../controller/setting_controller.dart';
import '../models/frequencyrange_item_model.dart';
import 'package:flutter/material.dart';
import 'package:tejaswitandel_s_application149/core/app_export.dart';

// ignore: must_be_immutable
class FrequencyrangeItemWidget extends StatelessWidget {
  FrequencyrangeItemWidget(
    this.frequencyrangeItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  FrequencyrangeItemModel frequencyrangeItemModelObj;

  var controller = Get.find<SettingController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 31.h,
      child: Column(
        children: [
          Obx(
            () => Text(
              frequencyrangeItemModelObj.dBValue!.value,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.bodySmall,
            ),
          ),
          SizedBox(height: 8.v),
          CustomImageView(
            imagePath: ImageConstant.img1,
            height: 298.v,
            width: 19.h,
          ),
          SizedBox(height: 7.v),
          Obx(
            () => Text(
              frequencyrangeItemModelObj.hzValue!.value,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.bodySmall,
            ),
          ),
        ],
      ),
    );
  }
}
