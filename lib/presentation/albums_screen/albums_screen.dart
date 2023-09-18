import '../albums_screen/widgets/albumdetails_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:tejaswitandel_s_application149/core/app_export.dart';
import 'package:tejaswitandel_s_application149/widgets/app_bar/appbar_image.dart';
import 'package:tejaswitandel_s_application149/widgets/app_bar/appbar_image_1.dart';
import 'package:tejaswitandel_s_application149/widgets/app_bar/appbar_title.dart';
import 'package:tejaswitandel_s_application149/widgets/app_bar/custom_app_bar.dart';

class AlbumsScreen extends StatelessWidget {
  const AlbumsScreen({Key? key}) : super(key: key);

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
                        EdgeInsets.only(left: 30.h, top: 20.v, bottom: 17.v),
                    onTap: () {
                      onTapArrowleftone(context);
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "Albums"),
                actions: [
                  AppbarImage1(
                      svgPath: ImageConstant.imgMenu,
                      margin: EdgeInsets.fromLTRB(31.h, 21.v, 31.h, 18.v))
                ]),
            body: Padding(
                padding: EdgeInsets.only(left: 30.h, top: 23.v, right: 30.h),
                child: ListView.separated(
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (context, index) {
                      return SizedBox(height: 17.v);
                    },
                    itemCount: 6,
                    itemBuilder: (context, index) {
                      return AlbumdetailsItemWidget();
                    }))));
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }
}
