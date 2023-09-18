import '../top_playlists_page/widgets/userplaylist_item_widget.dart';
import 'controller/top_playlists_controller.dart';
import 'models/top_playlists_model.dart';
import 'models/userplaylist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:tejaswitandel_s_application149/core/app_export.dart';
import 'package:tejaswitandel_s_application149/widgets/app_bar/appbar_image.dart';
import 'package:tejaswitandel_s_application149/widgets/app_bar/appbar_image_1.dart';
import 'package:tejaswitandel_s_application149/widgets/app_bar/appbar_title.dart';
import 'package:tejaswitandel_s_application149/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class TopPlaylistsPage extends StatelessWidget {
  TopPlaylistsPage({Key? key}) : super(key: key);

  TopPlaylistsController controller =
      Get.put(TopPlaylistsController(TopPlaylistsModel().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: CustomAppBar(
                leadingWidth: 40.h,
                leading: AppbarImage(
                    svgPath: ImageConstant.imgArrowleft,
                    margin:
                        EdgeInsets.only(left: 30.h, top: 19.v, bottom: 18.v),
                    onTap: () {
                      onTapArrowleftone();
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "lbl_top_playlists".tr),
                actions: [
                  AppbarImage1(
                      svgPath: ImageConstant.imgMenu,
                      margin: EdgeInsets.fromLTRB(30.h, 20.v, 30.h, 19.v))
                ]),
            body: Padding(
                padding: EdgeInsets.only(left: 12.h, top: 8.v, right: 12.h),
                child: Obx(() => ListView.separated(
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (context, index) {
                      return SizedBox(height: 18.v);
                    },
                    itemCount: controller.topPlaylistsModelObj.value
                        .userplaylistItemList.value.length,
                    itemBuilder: (context, index) {
                      UserplaylistItemModel model = controller
                          .topPlaylistsModelObj
                          .value
                          .userplaylistItemList
                          .value[index];
                      return UserplaylistItemWidget(model);
                    })))));
  }

  /// Navigates to the previous screen.
  ///
  /// When the action is triggered, this function uses the [Get] package to
  /// navigate to the previous screen in the navigation stack.
  onTapArrowleftone() {
    Get.back();
  }
}
