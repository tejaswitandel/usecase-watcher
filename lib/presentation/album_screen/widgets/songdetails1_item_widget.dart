import '../controller/album_controller.dart';
import '../models/songdetails1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:tejaswitandel_s_application149/core/app_export.dart';

// ignore: must_be_immutable
class Songdetails1ItemWidget extends StatelessWidget {
  Songdetails1ItemWidget(
    this.songdetails1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Songdetails1ItemModel songdetails1ItemModelObj;

  var controller = Get.find<AlbumController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 26.adaptSize,
          width: 26.adaptSize,
          margin: EdgeInsets.symmetric(vertical: 8.v),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 8.h),
                  child: Obx(
                    () => Text(
                      songdetails1ItemModelObj.count!.value,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.titleMedium,
                    ),
                  ),
                ),
              ),
              Opacity(
                opacity: 0.296,
                child: Align(
                  alignment: Alignment.center,
                  child: Container(
                    height: 26.adaptSize,
                    width: 26.adaptSize,
                    decoration: BoxDecoration(
                      color: appTheme.whiteA700.withOpacity(0.46),
                      borderRadius: BorderRadius.circular(
                        13.h,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 16.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Obx(
                () => Text(
                  songdetails1ItemModelObj.burning!.value,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.titleMedium,
                ),
              ),
              SizedBox(height: 3.v),
              Obx(
                () => Text(
                  songdetails1ItemModelObj.podvalCaplella!.value,
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
              top: 17.v,
              bottom: 20.v,
            ),
          ),
        ),
      ],
    );
  }
}
