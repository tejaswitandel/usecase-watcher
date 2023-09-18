import '../album_screen/widgets/songdetails1_item_widget.dart';
import 'controller/album_controller.dart';
import 'models/songdetails1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:tejaswitandel_s_application149/core/app_export.dart';
import 'package:tejaswitandel_s_application149/widgets/app_bar/appbar_image.dart';
import 'package:tejaswitandel_s_application149/widgets/app_bar/appbar_image_1.dart';
import 'package:tejaswitandel_s_application149/widgets/app_bar/appbar_title.dart';
import 'package:tejaswitandel_s_application149/widgets/app_bar/custom_app_bar.dart';
import 'package:tejaswitandel_s_application149/widgets/custom_icon_button.dart';

class AlbumScreen extends GetWidget<AlbumController> {
  const AlbumScreen({Key? key}) : super(key: key);

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
                title: AppbarTitle(text: "lbl_wunder_king".tr),
                actions: [
                  AppbarImage1(
                      svgPath: ImageConstant.imgMenu,
                      margin: EdgeInsets.fromLTRB(30.h, 20.v, 30.h, 19.v))
                ]),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 30.h, vertical: 22.v),
                child: Column(children: [
                  CustomImageView(
                      svgPath: ImageConstant.imgThumbnail,
                      height: 100.adaptSize,
                      width: 100.adaptSize),
                  SizedBox(height: 41.v),
                  Text("lbl_wunder_king".tr,
                      style: theme.textTheme.headlineMedium),
                  SizedBox(height: 6.v),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("lbl".tr, style: theme.textTheme.bodyLarge),
                        Opacity(
                            opacity: 0.648,
                            child: Container(
                                height: 3.adaptSize,
                                width: 3.adaptSize,
                                margin: EdgeInsets.only(
                                    left: 4.h, top: 11.v, bottom: 5.v),
                                decoration: BoxDecoration(
                                    color: appTheme.whiteA700.withOpacity(0.58),
                                    borderRadius: BorderRadius.circular(1.h)))),
                        Padding(
                            padding: EdgeInsets.only(left: 5.h),
                            child: Text("lbl_2018".tr,
                                style: theme.textTheme.bodyLarge))
                      ]),
                  SizedBox(height: 22.v),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    CustomIconButton(
                        height: 38.adaptSize,
                        width: 38.adaptSize,
                        margin: EdgeInsets.only(top: 16.v, bottom: 15.v),
                        padding: EdgeInsets.all(8.h),
                        child:
                            CustomImageView(svgPath: ImageConstant.imgReply)),
                    CustomImageView(
                        svgPath: ImageConstant.imgPlayWhiteA70069x69,
                        height: 69.adaptSize,
                        width: 69.adaptSize,
                        margin: EdgeInsets.only(left: 26.h)),
                    CustomIconButton(
                        height: 38.adaptSize,
                        width: 38.adaptSize,
                        margin: EdgeInsets.only(
                            left: 26.h, top: 16.v, bottom: 15.v),
                        padding: EdgeInsets.all(7.h),
                        child: CustomImageView(
                            svgPath: ImageConstant.imgNavfavoritesWhiteA700))
                  ]),
                  SizedBox(height: 26.v),
                  Expanded(
                      child: Obx(() => ListView.separated(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          separatorBuilder: (context, index) {
                            return SizedBox(height: 18.v);
                          },
                          itemCount: controller.albumModelObj.value
                              .songdetails1ItemList.value.length,
                          itemBuilder: (context, index) {
                            Songdetails1ItemModel model = controller
                                .albumModelObj
                                .value
                                .songdetails1ItemList
                                .value[index];
                            return Songdetails1ItemWidget(model);
                          })))
                ]))));
  }

  /// Navigates to the previous screen.
  ///
  /// When the action is triggered, this function uses the [Get] package to
  /// navigate to the previous screen in the navigation stack.
  onTapArrowleftone() {
    Get.back();
  }
}
