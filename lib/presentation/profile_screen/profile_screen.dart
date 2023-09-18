import 'package:flutter/material.dart';
import 'package:tejaswitandel_s_application149/core/app_export.dart';
import 'package:tejaswitandel_s_application149/widgets/app_bar/appbar_image.dart';
import 'package:tejaswitandel_s_application149/widgets/app_bar/appbar_image_1.dart';
import 'package:tejaswitandel_s_application149/widgets/app_bar/appbar_title.dart';
import 'package:tejaswitandel_s_application149/widgets/app_bar/custom_app_bar.dart';
import 'package:tejaswitandel_s_application149/widgets/custom_elevated_button.dart';

class ProfileScreen extends StatelessWidget {
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
                      onTapArrowleftone(context);
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "Profile"),
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
                  Text("Erlik Bachman", style: theme.textTheme.titleMedium),
                  SizedBox(height: 7.v),
                  Text("Bachman@mail.com", style: theme.textTheme.bodyMedium),
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
                            Text("My subscription",
                                style: theme.textTheme.bodyLarge),
                            SizedBox(height: 5.v),
                            Text("Valid until May 23, 2021",
                                style: theme.textTheme.bodyMedium)
                          ])),
                  SizedBox(height: 27.v),
                  CustomElevatedButton(text: "Restore purchases"),
                  SizedBox(height: 8.v),
                  CustomElevatedButton(text: "Enter promo code"),
                  SizedBox(height: 8.v),
                  CustomElevatedButton(text: "Quit"),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }
}
