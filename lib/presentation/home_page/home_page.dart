import 'package:flutter/material.dart';
import 'package:tejaswitandel_s_application149/core/app_export.dart';
import 'package:tejaswitandel_s_application149/widgets/app_bar/appbar_image_1.dart';
import 'package:tejaswitandel_s_application149/widgets/app_bar/appbar_title.dart';
import 'package:tejaswitandel_s_application149/widgets/app_bar/custom_app_bar.dart';
import 'package:tejaswitandel_s_application149/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class HomePage extends StatelessWidget {
  const HomePage({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(
          centerTitle: true,
          title: AppbarTitle(
            text: "Dashboard",
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
                    "Listen to music",
                    style: theme.textTheme.headlineMedium,
                  ),
                  SizedBox(height: 1.v),
                  Text(
                    "without restrictions",
                    style: theme.textTheme.headlineMedium,
                  ),
                  SizedBox(height: 44.v),
                  CustomElevatedButton(
                    height: 42.v,
                    width: 236.h,
                    text: "Trial version",
                    buttonStyle: CustomButtonStyles.fillWhiteA,
                    buttonTextStyle: CustomTextStyles.bodyLargeBlack900,
                  ),
                  SizedBox(height: 40.v),
                  Text(
                    "Free for 3 months, then 12 a month",
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
                          "New releases",
                          style: CustomTextStyles.headlineMediumBold,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: 5.v,
                            bottom: 8.v,
                          ),
                          child: Text(
                            "View All",
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
                                "Urgent Siege",
                                style: theme.textTheme.titleMedium,
                              ),
                              SizedBox(height: 2.v),
                              Text(
                                "Damned Anthem",
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
                                "Urgent Siege",
                                style: theme.textTheme.titleMedium,
                              ),
                              SizedBox(height: 2.v),
                              Text(
                                "Damned Anthem",
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
