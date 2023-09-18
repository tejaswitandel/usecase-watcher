import '../playlist_bottomsheet/widgets/songdetails_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:tejaswitandel_s_application149/core/app_export.dart';

// ignore_for_file: must_be_immutable
class PlaylistBottomsheet extends StatelessWidget {
  const PlaylistBottomsheet({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 30.h,
        vertical: 14.v,
      ),
      decoration: AppDecoration.fillBlack.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL29,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Opacity(
            opacity: 0.445,
            child: Container(
              height: 5.v,
              width: 35.h,
              decoration: BoxDecoration(
                color: appTheme.whiteA700.withOpacity(0.51),
                borderRadius: BorderRadius.circular(
                  2.h,
                ),
              ),
            ),
          ),
          SizedBox(height: 35.v),
          Expanded(
            child: ListView.separated(
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (
                context,
                index,
              ) {
                return SizedBox(
                  height: 18.v,
                );
              },
              itemCount: 8,
              itemBuilder: (context, index) {
                return SongdetailsItemWidget();
              },
            ),
          ),
          SizedBox(height: 55.v),
        ],
      ),
    );
  }
}
