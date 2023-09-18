import '../list_screen/widgets/songdetails2_item_widget.dart';
import 'controller/list_controller.dart';
import 'models/songdetails2_item_model.dart';
import 'package:flutter/material.dart';
import 'package:tejaswitandel_s_application149/core/app_export.dart';
import 'package:tejaswitandel_s_application149/widgets/app_bar/appbar_image.dart';
import 'package:tejaswitandel_s_application149/widgets/app_bar/appbar_image_1.dart';
import 'package:tejaswitandel_s_application149/widgets/app_bar/appbar_title.dart';
import 'package:tejaswitandel_s_application149/widgets/app_bar/custom_app_bar.dart';
import 'package:tejaswitandel_s_application149/widgets/custom_icon_button.dart';

class ListScreen extends GetWidget<ListController> {
  const ListScreen({Key? key}) : super(key: key);

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
                title: AppbarTitle(text: "lbl_playlists".tr),
                actions: [
                  AppbarImage1(
                      svgPath: ImageConstant.imgMenu,
                      margin: EdgeInsets.fromLTRB(30.h, 20.v, 30.h, 19.v))
                ]),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 30.h, vertical: 18.v),
                child: Column(children: [
                  Container(
                      height: 136.adaptSize,
                      width: 136.adaptSize,
                      decoration: BoxDecoration(
                          color: appTheme.redA200,
                          borderRadius: BorderRadius.circular(68.h))),
                  SizedBox(height: 4.v),
                  Text("lbl_renaissance".tr,
                      style: theme.textTheme.headlineMedium),
                  SizedBox(height: 8.v),
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
                        child: Text("lbl_23_hours".tr,
                            style: theme.textTheme.bodyLarge))
                  ]),
                  SizedBox(height: 20.v),
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
                  Spacer(),
                  Expanded(
                      child: Obx(() => ListView.separated(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          separatorBuilder: (context, index) {
                            return SizedBox(height: 19.v);
                          },
                          itemCount: controller.listModelObj.value
                              .songdetails2ItemList.value.length,
                          itemBuilder: (context, index) {
                            Songdetails2ItemModel model = controller
                                .listModelObj
                                .value
                                .songdetails2ItemList
                                .value[index];
                            return Songdetails2ItemWidget(model);
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
