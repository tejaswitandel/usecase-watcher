import '../song_menu_full_bottomsheet/widgets/addtoplaylist_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:tejaswitandel_s_application149/core/app_export.dart';
import 'package:tejaswitandel_s_application149/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class SongMenuFullBottomsheet extends StatelessWidget {
  const SongMenuFullBottomsheet({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 12.h,
        vertical: 14.v,
      ),
      decoration: AppDecoration.fillBlack.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL29,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 5.v,
            width: 35.h,
            decoration: BoxDecoration(
              color: appTheme.whiteA700,
              borderRadius: BorderRadius.circular(
                2.h,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 18.h,
              top: 23.v,
              right: 18.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomIconButton(
                  height: 38.adaptSize,
                  width: 38.adaptSize,
                  margin: EdgeInsets.only(bottom: 79.v),
                  padding: EdgeInsets.all(7.h),
                  child: CustomImageView(
                    svgPath: ImageConstant.imgBookmark,
                  ),
                ),
                Column(
                  children: [
                    Container(
                      height: 65.adaptSize,
                      width: 65.adaptSize,
                      decoration: BoxDecoration(
                        color: appTheme.red300,
                        borderRadius: BorderRadius.circular(
                          4.h,
                        ),
                      ),
                    ),
                    SizedBox(height: 7.v),
                    Text(
                      "Renaissance",
                      style: theme.textTheme.titleMedium,
                    ),
                    SizedBox(height: 6.v),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Podval Caplella",
                          style: theme.textTheme.bodyMedium,
                        ),
                        Opacity(
                          opacity: 0.648,
                          child: Container(
                            height: 3.adaptSize,
                            width: 3.adaptSize,
                            margin: EdgeInsets.only(
                              left: 6.h,
                              top: 9.v,
                              bottom: 5.v,
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
                          padding: EdgeInsets.only(left: 6.h),
                          child: Text(
                            "3:43",
                            style: theme.textTheme.bodyMedium,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                CustomIconButton(
                  height: 38.adaptSize,
                  width: 38.adaptSize,
                  margin: EdgeInsets.only(bottom: 79.v),
                  padding: EdgeInsets.all(8.h),
                  child: CustomImageView(
                    svgPath: ImageConstant.imgReply,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 29.v),
          Expanded(
            child: ListView.separated(
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (
                context,
                index,
              ) {
                return SizedBox(
                  height: 7.v,
                );
              },
              itemCount: 6,
              itemBuilder: (context, index) {
                return AddtoplaylistItemWidget();
              },
            ),
          ),
          SizedBox(height: 44.v),
        ],
      ),
    );
  }
}
