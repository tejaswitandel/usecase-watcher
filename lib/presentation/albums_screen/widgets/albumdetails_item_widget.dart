import 'package:flutter/material.dart';
import 'package:tejaswitandel_s_application149/core/app_export.dart';

// ignore: must_be_immutable
class AlbumdetailsItemWidget extends StatelessWidget {
  const AlbumdetailsItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 78.adaptSize,
          width: 78.adaptSize,
          decoration: BoxDecoration(
            color: appTheme.blueGray600,
            borderRadius: BorderRadius.circular(
              8.h,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 16.h,
            top: 3.v,
            bottom: 5.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Flower Power",
                style: theme.textTheme.titleMedium,
              ),
              SizedBox(height: 6.v),
              Text(
                "Ray Charles",
                style: theme.textTheme.bodyLarge,
              ),
              SizedBox(height: 3.v),
              Text(
                "2018",
                style: theme.textTheme.bodyLarge,
              ),
            ],
          ),
        ),
        Spacer(),
        Opacity(
          opacity: 0.503,
          child: CustomImageView(
            svgPath: ImageConstant.imgMoreicon,
            height: 4.v,
            width: 20.h,
            margin: EdgeInsets.symmetric(vertical: 37.v),
          ),
        ),
      ],
    );
  }
}
