import 'package:flutter/material.dart';
import 'package:tejaswitandel_s_application149/core/app_export.dart';

// ignore: must_be_immutable
class ArtistprofileItemWidget extends StatelessWidget {
  const ArtistprofileItemWidget({Key? key})
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
            color: appTheme.green300,
            borderRadius: BorderRadius.circular(
              39.h,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 13.h,
            top: 15.v,
            bottom: 17.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Lorn",
                style: theme.textTheme.titleMedium,
              ),
              SizedBox(height: 5.v),
              Row(
                children: [
                  Text(
                    "843 tracks",
                    style: theme.textTheme.bodyLarge,
                  ),
                  Opacity(
                    opacity: 0.648,
                    child: Container(
                      height: 3.adaptSize,
                      width: 3.adaptSize,
                      margin: EdgeInsets.only(
                        left: 4.h,
                        top: 11.v,
                        bottom: 4.v,
                      ),
                      decoration: BoxDecoration(
                        color: appTheme.whiteA700.withOpacity(0.58),
                        borderRadius: BorderRadius.circular(
                          1.h,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 5.h),
                    child: Text(
                      "23 albums",
                      style: theme.textTheme.bodyLarge,
                    ),
                  ),
                ],
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
