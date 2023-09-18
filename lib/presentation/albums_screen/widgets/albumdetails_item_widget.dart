import '../controller/albums_controller.dart';
import '../models/albumdetails_item_model.dart';
import 'package:flutter/material.dart';
import 'package:tejaswitandel_s_application149/core/app_export.dart';

// ignore: must_be_immutable
class AlbumdetailsItemWidget extends StatelessWidget {
  AlbumdetailsItemWidget(
    this.albumdetailsItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  AlbumdetailsItemModel albumdetailsItemModelObj;

  var controller = Get.find<AlbumsController>();

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
              Obx(
                () => Text(
                  albumdetailsItemModelObj.songName!.value,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.titleMedium,
                ),
              ),
              SizedBox(height: 6.v),
              Obx(
                () => Text(
                  albumdetailsItemModelObj.artistName!.value,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.bodyLarge,
                ),
              ),
              SizedBox(height: 3.v),
              Text(
                "lbl_2018".tr,
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
