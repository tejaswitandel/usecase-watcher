import 'controller/artist_controller.dart';
import 'package:flutter/material.dart';
import 'package:tejaswitandel_s_application149/core/app_export.dart';
import 'package:tejaswitandel_s_application149/widgets/app_bar/appbar_image.dart';
import 'package:tejaswitandel_s_application149/widgets/app_bar/appbar_image_1.dart';
import 'package:tejaswitandel_s_application149/widgets/app_bar/appbar_title.dart';
import 'package:tejaswitandel_s_application149/widgets/app_bar/custom_app_bar.dart';
import 'package:tejaswitandel_s_application149/widgets/custom_icon_button.dart';

class ArtistScreen extends GetWidget<ArtistController> {
  const ArtistScreen({Key? key}) : super(key: key);

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
                title: AppbarTitle(text: "lbl_renaissance".tr),
                actions: [
                  AppbarImage1(
                      svgPath: ImageConstant.imgMenu,
                      margin: EdgeInsets.fromLTRB(30.h, 22.v, 30.h, 17.v))
                ]),
            body: Container(
                width: double.maxFinite,
                padding:
                    EdgeInsets.only(left: 27.h, right: 27.h, bottom: 125.v),
                child:
                    Column(mainAxisAlignment: MainAxisAlignment.end, children: [
                  SizedBox(height: 82.v),
                  CustomIconButton(
                      height: 38.adaptSize,
                      width: 38.adaptSize,
                      padding: EdgeInsets.all(7.h),
                      child:
                          CustomImageView(svgPath: ImageConstant.imgBookmark)),
                  SizedBox(height: 8.v),
                  Text("lbl_renaissance".tr,
                      style: theme.textTheme.headlineMedium),
                  SizedBox(height: 9.v),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Text("lbl_843_tracks".tr, style: theme.textTheme.bodyLarge),
                    Opacity(
                        opacity: 0.648,
                        child: Container(
                            height: 3.adaptSize,
                            width: 3.adaptSize,
                            margin: EdgeInsets.only(
                                left: 4.h, top: 11.v, bottom: 4.v),
                            decoration: BoxDecoration(
                                color: appTheme.whiteA700.withOpacity(0.58),
                                borderRadius: BorderRadius.circular(1.h)))),
                    Padding(
                        padding: EdgeInsets.only(left: 5.h),
                        child: Text("lbl_23_albums".tr,
                            style: theme.textTheme.bodyLarge))
                  ]),
                  Padding(
                      padding: EdgeInsets.only(left: 3.h, top: 89.v),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                                child: Padding(
                                    padding: EdgeInsets.only(right: 7.h),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                              height: 181.v,
                                              width: 159.h,
                                              decoration: BoxDecoration(
                                                  color: appTheme.yellow700,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.h))),
                                          SizedBox(height: 4.v),
                                          Text("lbl_urgent_siege".tr,
                                              style:
                                                  theme.textTheme.titleMedium),
                                          SizedBox(height: 2.v),
                                          Text("lbl_damned_anthem".tr,
                                              style: theme.textTheme.bodyMedium)
                                        ]))),
                            Expanded(
                                child: Padding(
                                    padding: EdgeInsets.only(left: 7.h),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                              height: 181.v,
                                              width: 159.h,
                                              decoration: BoxDecoration(
                                                  color: appTheme.green400,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.h))),
                                          SizedBox(height: 4.v),
                                          Text("lbl_urgent_siege".tr,
                                              style:
                                                  theme.textTheme.titleMedium),
                                          SizedBox(height: 2.v),
                                          Text("lbl_damned_anthem".tr,
                                              style: theme.textTheme.bodyMedium)
                                        ])))
                          ]))
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
