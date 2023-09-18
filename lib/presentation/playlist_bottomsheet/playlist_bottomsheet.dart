import '../playlist_bottomsheet/widgets/songdetails_item_widget.dart';
import 'controller/playlist_controller.dart';
import 'models/songdetails_item_model.dart';
import 'package:flutter/material.dart';
import 'package:tejaswitandel_s_application149/core/app_export.dart';

class PlaylistBottomsheet extends StatelessWidget {
  PlaylistBottomsheet(
    this.controller, {
    Key? key,
  }) : super(
          key: key,
        );

  PlaylistController controller;

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
            child: Obx(
              () => ListView.separated(
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
                itemCount: controller
                    .playlistModelObj.value.songdetailsItemList.value.length,
                itemBuilder: (context, index) {
                  SongdetailsItemModel model = controller
                      .playlistModelObj.value.songdetailsItemList.value[index];
                  return SongdetailsItemWidget(
                    model,
                  );
                },
              ),
            ),
          ),
          SizedBox(height: 55.v),
        ],
      ),
    );
  }
}
