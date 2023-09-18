import '../controller/playlist_controller.dart';
import '../models/songdetails_item_model.dart';
import 'package:flutter/material.dart';
import 'package:tejaswitandel_s_application149/core/app_export.dart';

// ignore: must_be_immutable
class SongdetailsItemWidget extends StatelessWidget {
  SongdetailsItemWidget(
    this.songdetailsItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  SongdetailsItemModel songdetailsItemModelObj;

  var controller = Get.find<PlaylistController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 60.adaptSize,
          width: 60.adaptSize,
          decoration: BoxDecoration(
            color: appTheme.cyanA700,
            borderRadius: BorderRadius.circular(
              30.h,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 11.h,
            top: 7.v,
            bottom: 10.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Obx(
                () => Text(
                  songdetailsItemModelObj.flashbacksText!.value,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.titleMedium,
                ),
              ),
              SizedBox(height: 4.v),
              Obx(
                () => Text(
                  songdetailsItemModelObj.emikaText!.value,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.bodyMedium,
                ),
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
            margin: EdgeInsets.only(
              top: 27.v,
              bottom: 29.v,
            ),
          ),
        ),
      ],
    );
  }
}
