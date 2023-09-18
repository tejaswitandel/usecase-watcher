import 'controller/profile_controller.dart';
import 'package:flutter/material.dart';
import 'package:tejaswitandel_s_application149/core/app_export.dart';
import 'package:tejaswitandel_s_application149/widgets/app_bar/appbar_image.dart';
import 'package:tejaswitandel_s_application149/widgets/app_bar/appbar_image_1.dart';
import 'package:tejaswitandel_s_application149/widgets/app_bar/appbar_title.dart';
import 'package:tejaswitandel_s_application149/widgets/app_bar/custom_app_bar.dart';
import 'package:tejaswitandel_s_application149/widgets/custom_elevated_button.dart';

class ProfileScreen extends GetWidget<ProfileController> {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: CustomAppBar(
                leadingWidth: 41.h,
                leading: AppbarImage(
                    svgPath: ImageConstant.imgArrowleft,
                    margin:
                        EdgeInsets.only(left: 31.h, top: 17.v, bottom: 20.v),
                    onTap: () {
                      onTapArrowleftone();
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "lbl_profile".tr),
                actions: [
                  AppbarImage1(
                      svgPath: ImageConstant.imgClose,
                      margin: EdgeInsets.fromLTRB(30.h, 23.v, 30.h, 19.v))
                ]),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 25.v),
                child: Column(children: [
                  Container(
                      height: 97.adaptSize,
                      width: 97.adaptSize,
                      decoration: BoxDecoration(
                          color: appTheme.deepOrange100,
                          borderRadius: BorderRadius.circular(48.h))),
                  SizedBox(height: 9.v),
                  Text("lbl_erlik_bachman".tr,
                      style: theme.textTheme.titleMedium),
                  SizedBox(height: 7.v),
                  Text("msg_bachman_mail_com".tr,
                      style: theme.textTheme.bodyMedium),
                  SizedBox(height: 48.v),
                  Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 109.h, vertical: 19.v),
                      decoration: AppDecoration.fillBlack900.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder9),
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("lbl_my_subscription".tr,
                                style: theme.textTheme.bodyLarge),
                            SizedBox(height: 5.v),
                            Text("msg_valid_until_may".tr,
                                style: theme.textTheme.bodyMedium)
                          ])),
                  SizedBox(height: 27.v),
                  CustomElevatedButton(text: "msg_restore_purchases".tr),
                  SizedBox(height: 8.v),
                  CustomElevatedButton(text: "msg_enter_promo_code".tr),
                  SizedBox(height: 8.v),
                  CustomElevatedButton(text: "lbl_quit".tr),
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
