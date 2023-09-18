import 'controller/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:tejaswitandel_s_application149/core/app_export.dart';
import 'package:tejaswitandel_s_application149/core/utils/validation_functions.dart';
import 'package:tejaswitandel_s_application149/widgets/custom_elevated_button.dart';
import 'package:tejaswitandel_s_application149/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class LoginScreen extends GetWidget<LoginController> {
  LoginScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: theme.colorScheme.secondaryContainer,
        body: Form(
          key: _formKey,
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.only(
              left: 30.h,
              right: 30.h,
              bottom: 177.v,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Spacer(),
                Text(
                  "lbl_sign_in".tr,
                  style: theme.textTheme.headlineMedium,
                ),
                SizedBox(height: 28.v),
                CustomTextFormField(
                  controller: controller.emailController,
                  hintText: "lbl_email".tr,
                  textInputType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value == null ||
                        (!isValidEmail(value, isRequired: true))) {
                      return "Please enter valid email";
                    }
                    return null;
                  },
                ),
                SizedBox(height: 23.v),
                CustomTextFormField(
                  controller: controller.passwordController,
                  hintText: "lbl_password".tr,
                  textInputAction: TextInputAction.done,
                  textInputType: TextInputType.visiblePassword,
                  validator: (value) {
                    if (value == null ||
                        (!isValidPassword(value, isRequired: true))) {
                      return "Please enter valid password";
                    }
                    return null;
                  },
                  obscureText: true,
                ),
                SizedBox(height: 23.v),
                CustomElevatedButton(
                  height: 51.v,
                  text: "lbl_sign_in".tr,
                  buttonStyle: CustomButtonStyles.fillWhiteATL5,
                  buttonTextStyle: CustomTextStyles.bodyLargeBlack900,
                ),
                SizedBox(height: 35.v),
                Text(
                  "msg_forgot_your_login".tr,
                  style: theme.textTheme.bodyMedium,
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: CustomElevatedButton(
          height: 25.v,
          width: 114.h,
          text: "lbl_create_account".tr,
          margin: EdgeInsets.only(
            left: 138.h,
            right: 138.h,
            bottom: 24.v,
          ),
          buttonStyle: CustomButtonStyles.fillWhiteATL12,
          buttonTextStyle: theme.textTheme.bodyMedium!,
        ),
      ),
    );
  }
}
