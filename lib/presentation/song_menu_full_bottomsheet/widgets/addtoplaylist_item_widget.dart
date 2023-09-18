import '../controller/song_menu_full_controller.dart';
import '../models/addtoplaylist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:tejaswitandel_s_application149/core/app_export.dart';

// ignore: must_be_immutable
class AddtoplaylistItemWidget extends StatelessWidget {
  AddtoplaylistItemWidget(
    this.addtoplaylistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  AddtoplaylistItemModel addtoplaylistItemModelObj;

  var controller = Get.find<SongMenuFullController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 18.h,
        vertical: 15.v,
      ),
      decoration: AppDecoration.fillGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder9,
      ),
      child: Row(
        children: [
          CustomImageView(
            svgPath: ImageConstant.imgPlus,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(top: 1.v),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 88.h,
              top: 3.v,
              bottom: 3.v,
            ),
            child: Obx(
              () => Text(
                addtoplaylistItemModelObj.addtoplaylist!.value,
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.bodyLarge,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
