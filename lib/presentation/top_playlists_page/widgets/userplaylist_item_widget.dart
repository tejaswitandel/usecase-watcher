import 'package:flutter/material.dart';
import 'package:tejaswitandel_s_application149/core/app_export.dart';
import 'package:tejaswitandel_s_application149/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class UserplaylistItemWidget extends StatelessWidget {
  const UserplaylistItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 18.h,
        vertical: 21.v,
      ),
      decoration: AppDecoration.gradientLimeToGreenA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder9,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 5.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomIconButton(
                  height: 38.adaptSize,
                  width: 38.adaptSize,
                  padding: EdgeInsets.all(7.h),
                  child: CustomImageView(
                    svgPath: ImageConstant.imgBookmarkBlack900,
                  ),
                ),
                SizedBox(height: 39.v),
                Text(
                  "Renaissance",
                  style: theme.textTheme.headlineMedium,
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
                        "23 hours",
                        style: theme.textTheme.bodyLarge,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          CustomImageView(
            svgPath: ImageConstant.imgPlayWhiteA700,
            height: 59.adaptSize,
            width: 59.adaptSize,
            margin: EdgeInsets.only(
              top: 76.v,
              bottom: 3.v,
            ),
          ),
        ],
      ),
    );
  }
}
