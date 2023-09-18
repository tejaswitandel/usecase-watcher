import '../controller/artists_controller.dart';
import '../models/artistprofile_item_model.dart';
import 'package:flutter/material.dart';
import 'package:tejaswitandel_s_application149/core/app_export.dart';

// ignore: must_be_immutable
class ArtistprofileItemWidget extends StatelessWidget {
  ArtistprofileItemWidget(
    this.artistprofileItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ArtistprofileItemModel artistprofileItemModelObj;

  var controller = Get.find<ArtistsController>();

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
              Obx(
                () => Text(
                  artistprofileItemModelObj.userName!.value,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.titleMedium,
                ),
              ),
              SizedBox(height: 5.v),
              Row(
                children: [
                  Text(
                    "lbl_843_tracks".tr,
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
                    child: Obx(
                      () => Text(
                        artistprofileItemModelObj.albumCount!.value,
                        overflow: TextOverflow.ellipsis,
                        style: theme.textTheme.bodyLarge,
                      ),
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
