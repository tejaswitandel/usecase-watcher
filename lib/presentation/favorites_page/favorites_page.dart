import 'controller/favorites_controller.dart';
import 'models/favorites_model.dart';
import 'package:flutter/material.dart';
import 'package:tejaswitandel_s_application149/core/app_export.dart';
import 'package:tejaswitandel_s_application149/widgets/app_bar/appbar_image.dart';
import 'package:tejaswitandel_s_application149/widgets/app_bar/appbar_image_1.dart';
import 'package:tejaswitandel_s_application149/widgets/app_bar/appbar_title.dart';
import 'package:tejaswitandel_s_application149/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class FavoritesPage extends StatelessWidget {
  FavoritesPage({Key? key}) : super(key: key);

  FavoritesController controller =
      Get.put(FavoritesController(FavoritesModel().obs));

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
                title: AppbarTitle(text: "lbl_favourites".tr),
                actions: [
                  AppbarImage1(
                      svgPath: ImageConstant.imgMenu,
                      margin: EdgeInsets.fromLTRB(30.h, 22.v, 30.h, 17.v))
                ]),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 37.v),
                child: Column(children: [
                  Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 18.h, vertical: 24.v),
                      decoration: AppDecoration.gradientYellowToDeepOrangeA
                          .copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder9),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Padding(
                                padding:
                                    EdgeInsets.only(top: 75.v, bottom: 2.v),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("lbl_did_you_like_it".tr,
                                          style:
                                              theme.textTheme.headlineMedium),
                                      SizedBox(height: 3.v),
                                      Text("lbl_843_tracks".tr,
                                          style: theme.textTheme.bodyLarge)
                                    ])),
                            CustomImageView(
                                svgPath: ImageConstant.imgPlayWhiteA700,
                                height: 59.adaptSize,
                                width: 59.adaptSize,
                                margin: EdgeInsets.only(top: 73.v))
                          ])),
                  SizedBox(height: 21.v),
                  Column(children: [
                    Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 18.h, vertical: 15.v),
                        decoration: AppDecoration.fillGray.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder9),
                        child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomImageView(
                                  svgPath: ImageConstant.imgMusic,
                                  height: 24.v,
                                  width: 19.h,
                                  margin: EdgeInsets.only(top: 1.v)),
                              Padding(
                                  padding:
                                      EdgeInsets.only(top: 1.v, bottom: 5.v),
                                  child: Text("lbl_tracks".tr,
                                      style: theme.textTheme.bodyLarge))
                            ])),
                    SizedBox(height: 8.v),
                    Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 18.h, vertical: 15.v),
                        decoration: AppDecoration.fillGray.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder9),
                        child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomImageView(
                                  svgPath: ImageConstant.imgUser,
                                  height: 24.v,
                                  width: 21.h,
                                  margin: EdgeInsets.only(top: 1.v)),
                              Padding(
                                  padding:
                                      EdgeInsets.only(top: 1.v, bottom: 5.v),
                                  child: Text("lbl_artist".tr,
                                      style: theme.textTheme.bodyLarge))
                            ])),
                    SizedBox(height: 8.v),
                    Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 18.h, vertical: 16.v),
                        decoration: AppDecoration.fillGray.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder9),
                        child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomImageView(
                                  svgPath: ImageConstant.imgAlbumicon,
                                  height: 24.adaptSize,
                                  width: 24.adaptSize,
                                  margin: EdgeInsets.only(top: 1.v)),
                              Padding(
                                  padding:
                                      EdgeInsets.only(top: 1.v, bottom: 4.v),
                                  child: Text("lbl_album".tr,
                                      style: theme.textTheme.bodyLarge))
                            ])),
                    SizedBox(height: 8.v),
                    Container(
                        padding: EdgeInsets.all(18.h),
                        decoration: AppDecoration.fillGray.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder9),
                        child: Row(children: [
                          CustomImageView(
                              svgPath: ImageConstant.imgFile,
                              height: 18.v,
                              width: 25.h,
                              margin: EdgeInsets.only(top: 1.v)),
                          Text("lbl_playlists".tr,
                              style: CustomTextStyles.titleMediumBold)
                        ])),
                    SizedBox(height: 8.v),
                    Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 19.h, vertical: 16.v),
                        decoration: AppDecoration.fillGray.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder9),
                        child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomImageView(
                                  svgPath: ImageConstant.imgDownload,
                                  height: 23.adaptSize,
                                  width: 23.adaptSize),
                              Padding(
                                  padding: EdgeInsets.only(bottom: 4.v),
                                  child: Text("lbl_download".tr,
                                      style: CustomTextStyles.titleMediumBold))
                            ]))
                  ]),
                  SizedBox(height: 5.v)
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
