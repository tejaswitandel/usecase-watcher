import '../setting_screen/widgets/frequencyrange_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:tejaswitandel_s_application149/core/app_export.dart';
import 'package:tejaswitandel_s_application149/widgets/app_bar/appbar_image.dart';
import 'package:tejaswitandel_s_application149/widgets/app_bar/appbar_image_1.dart';
import 'package:tejaswitandel_s_application149/widgets/app_bar/appbar_title.dart';
import 'package:tejaswitandel_s_application149/widgets/app_bar/custom_app_bar.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: CustomAppBar(
                leadingWidth: 35.h,
                leading: AppbarImage(
                    svgPath: ImageConstant.imgArrowleft,
                    margin:
                        EdgeInsets.only(left: 25.h, top: 15.v, bottom: 22.v),
                    onTap: () {
                      onTapArrowleftone(context);
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "Equalizer"),
                actions: [
                  AppbarImage1(
                      svgPath: ImageConstant.imgClose,
                      margin: EdgeInsets.symmetric(
                          horizontal: 30.h, vertical: 21.v))
                ]),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 30.h, vertical: 22.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                          height: 342.v,
                          child: ListView.separated(
                              scrollDirection: Axis.horizontal,
                              separatorBuilder: (context, index) {
                                return SizedBox(width: 21.h);
                              },
                              itemCount: 6,
                              itemBuilder: (context, index) {
                                return FrequencyrangeItemWidget();
                              })),
                      SizedBox(height: 39.v),
                      Text("My Settings", style: theme.textTheme.bodyLarge),
                      SizedBox(height: 30.v),
                      Text("Default", style: theme.textTheme.bodyLarge),
                      SizedBox(height: 32.v),
                      Text("Club music",
                          style: CustomTextStyles.bodyLargeTealA400),
                      SizedBox(height: 32.v),
                      Text("Classical music", style: theme.textTheme.bodyLarge),
                      SizedBox(height: 32.v),
                      Text("Dance music", style: theme.textTheme.bodyLarge),
                      SizedBox(height: 33.v),
                      Text("Low frequency gain",
                          style: theme.textTheme.bodyLarge),
                      SizedBox(height: 32.v),
                      Text("Low frequency gain",
                          style: theme.textTheme.bodyLarge),
                      SizedBox(height: 2.v)
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
