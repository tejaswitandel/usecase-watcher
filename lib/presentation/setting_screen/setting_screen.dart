import '../setting_screen/widgets/frequencyrange_item_widget.dart';
import 'controller/setting_controller.dart';
import 'models/frequencyrange_item_model.dart';
import 'package:flutter/material.dart';
import 'package:tejaswitandel_s_application149/core/app_export.dart';
import 'package:tejaswitandel_s_application149/widgets/app_bar/appbar_image.dart';
import 'package:tejaswitandel_s_application149/widgets/app_bar/appbar_image_1.dart';
import 'package:tejaswitandel_s_application149/widgets/app_bar/appbar_title.dart';
import 'package:tejaswitandel_s_application149/widgets/app_bar/custom_app_bar.dart';

class SettingScreen extends GetWidget<SettingController> {
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
                      onTapArrowleftone();
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "lbl_equalizer".tr),
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
                          child: Obx(() => ListView.separated(
                              scrollDirection: Axis.horizontal,
                              separatorBuilder: (context, index) {
                                return SizedBox(width: 21.h);
                              },
                              itemCount: controller.settingModelObj.value
                                  .frequencyrangeItemList.value.length,
                              itemBuilder: (context, index) {
                                FrequencyrangeItemModel model = controller
                                    .settingModelObj
                                    .value
                                    .frequencyrangeItemList
                                    .value[index];
                                return FrequencyrangeItemWidget(model);
                              }))),
                      SizedBox(height: 39.v),
                      Text("lbl_my_settings".tr,
                          style: theme.textTheme.bodyLarge),
                      SizedBox(height: 30.v),
                      Text("lbl_default".tr, style: theme.textTheme.bodyLarge),
                      SizedBox(height: 32.v),
                      Text("lbl_club_music".tr,
                          style: CustomTextStyles.bodyLargeTealA400),
                      SizedBox(height: 32.v),
                      Text("lbl_classical_music".tr,
                          style: theme.textTheme.bodyLarge),
                      SizedBox(height: 32.v),
                      Text("lbl_dance_music".tr,
                          style: theme.textTheme.bodyLarge),
                      SizedBox(height: 33.v),
                      Text("msg_low_frequency_gain".tr,
                          style: theme.textTheme.bodyLarge),
                      SizedBox(height: 32.v),
                      Text("msg_low_frequency_gain".tr,
                          style: theme.textTheme.bodyLarge),
                      SizedBox(height: 2.v)
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
