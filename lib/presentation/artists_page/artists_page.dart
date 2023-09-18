import '../artists_page/widgets/artistprofile_item_widget.dart';
import 'controller/artists_controller.dart';
import 'models/artistprofile_item_model.dart';
import 'models/artists_model.dart';
import 'package:flutter/material.dart';
import 'package:tejaswitandel_s_application149/core/app_export.dart';
import 'package:tejaswitandel_s_application149/widgets/app_bar/appbar_image.dart';
import 'package:tejaswitandel_s_application149/widgets/app_bar/appbar_image_1.dart';
import 'package:tejaswitandel_s_application149/widgets/app_bar/appbar_title.dart';
import 'package:tejaswitandel_s_application149/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class ArtistsPage extends StatelessWidget {
  ArtistsPage({Key? key}) : super(key: key);

  ArtistsController controller = Get.put(ArtistsController(ArtistsModel().obs));

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
                        EdgeInsets.only(left: 30.h, top: 21.v, bottom: 16.v),
                    onTap: () {
                      onTapArrowleftone();
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "lbl_artists".tr),
                actions: [
                  AppbarImage1(
                      svgPath: ImageConstant.imgMenu,
                      margin: EdgeInsets.fromLTRB(30.h, 22.v, 30.h, 17.v))
                ]),
            body: Padding(
                padding: EdgeInsets.only(left: 30.h, top: 16.v, right: 30.h),
                child: Obx(() => ListView.separated(
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (context, index) {
                      return SizedBox(height: 17.v);
                    },
                    itemCount: controller.artistsModelObj.value
                        .artistprofileItemList.value.length,
                    itemBuilder: (context, index) {
                      ArtistprofileItemModel model = controller.artistsModelObj
                          .value.artistprofileItemList.value[index];
                      return ArtistprofileItemWidget(model);
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
