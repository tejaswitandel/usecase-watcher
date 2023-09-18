import 'controller/home_controller.dart';
import 'models/home_model.dart';
import 'package:flutter/material.dart';
import 'package:tejaswitandel_s_application149/core/app_export.dart';
import 'package:tejaswitandel_s_application149/widgets/app_bar/appbar_image_1.dart';
import 'package:tejaswitandel_s_application149/widgets/app_bar/appbar_title.dart';
import 'package:tejaswitandel_s_application149/widgets/app_bar/custom_app_bar.dart';
import 'package:tejaswitandel_s_application149/widgets/custom_elevated_button.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key})
      : super(
          key: key,
        );

  HomeController controller = Get.put(HomeController(HomeModel().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(
          centerTitle: true,
          title: AppbarTitle(
            text: "lbl_dashboard".tr,
          ),
          actions: [
            AppbarImage1(
              svgPath: ImageConstant.imgMenu,
              margin: EdgeInsets.fromLTRB(30.h, 22.v, 30.h, 17.v),
            ),
          ],
        ),
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 36.v),
            child: Padding(
              padding: EdgeInsets.only(
                left: 28.h,
                right: 22.h,
                bottom: 5.v,
              ),
              child: Column(
                children: [
                  Text(
                    "lbl_listen_to_music".tr,
                    style: theme.textTheme.headlineMedium,
                  ),
                  SizedBox(height: 1.v),
                  Text(
                    "msg_without_restrictions".tr,
                    style: theme.textTheme.headlineMedium,
                  ),
                  SizedBox(height: 44.v),
                  CustomElevatedButton(
                    height: 42.v,
                    width: 236.h,
                    text: "lbl_trial_version".tr,
                    buttonStyle: CustomButtonStyles.fillWhiteA,
                    buttonTextStyle: CustomTextStyles.bodyLargeBlack900,
                  ),
                  SizedBox(height: 40.v),
                  Text(
                    "msg_free_for_3_months".tr,
                    style: theme.textTheme.bodyMedium,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 2.h,
                      top: 47.v,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "lbl_new_releases".tr,
                          style: CustomTextStyles.headlineMediumBold,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: 5.v,
                            bottom: 8.v,
                          ),
                          child: Text(
                            "lbl_view_all".tr,
                            style: theme.textTheme.bodyMedium,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 15.v),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(right: 10.h),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 181.v,
                                width: 159.h,
                                decoration: BoxDecoration(
                                  color: appTheme.yellow700,
                                  borderRadius: BorderRadius.circular(
                                    12.h,
                                  ),
                                ),
                              ),
                              SizedBox(height: 4.v),
                              Text(
                                "lbl_urgent_siege".tr,
                                style: theme.textTheme.titleMedium,
                              ),
                              SizedBox(height: 2.v),
                              Text(
                                "lbl_damned_anthem".tr,
                                style: theme.textTheme.bodyMedium,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left: 10.h),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 181.v,
                                width: 159.h,
                                decoration: BoxDecoration(
                                  color: appTheme.green400,
                                  borderRadius: BorderRadius.circular(
                                    12.h,
                                  ),
                                ),
                              ),
                              SizedBox(height: 4.v),
                              Text(
                                "lbl_urgent_siege".tr,
                                style: theme.textTheme.titleMedium,
                              ),
                              SizedBox(height: 2.v),
                              Text(
                                "lbl_damned_anthem".tr,
                                style: theme.textTheme.bodyMedium,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
