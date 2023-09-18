import 'package:flutter/material.dart';
import 'package:tejaswitandel_s_application149/core/app_export.dart';

// ignore: must_be_immutable
class FrequencyrangeItemWidget extends StatelessWidget {
  const FrequencyrangeItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 31.h,
      child: Column(
        children: [
          Text(
            "4 dB",
            style: theme.textTheme.bodySmall,
          ),
          SizedBox(height: 8.v),
          CustomImageView(
            imagePath: ImageConstant.img1,
            height: 298.v,
            width: 19.h,
          ),
          SizedBox(height: 7.v),
          Text(
            "60 Hz",
            style: theme.textTheme.bodySmall,
          ),
        ],
      ),
    );
  }
}
