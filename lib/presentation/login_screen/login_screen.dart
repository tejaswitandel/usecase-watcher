import 'package:flutter/material.dart';
import 'package:tejaswitandel_s_application149/core/app_export.dart';
import 'package:tejaswitandel_s_application149/widgets/custom_elevated_button.dart';
import 'package:tejaswitandel_s_application149/widgets/custom_text_form_field.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.secondaryContainer,
        resizeToAvoidBottomInset: false,
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
                  "Sign in",
                  style: theme.textTheme.headlineMedium,
                ),
                SizedBox(height: 28.v),
                CustomTextFormField(
                  controller: emailController,
                  hintText: "Email",
                  textInputType: TextInputType.emailAddress,
                ),
                SizedBox(height: 23.v),
                CustomTextFormField(
                  controller: passwordController,
                  hintText: "Password",
                  textInputAction: TextInputAction.done,
                  textInputType: TextInputType.visiblePassword,
                  obscureText: true,
                ),
                SizedBox(height: 23.v),
                CustomElevatedButton(
                  height: 51.v,
                  text: "Sign in",
                  buttonStyle: CustomButtonStyles.fillWhiteATL5,
                  buttonTextStyle: CustomTextStyles.bodyLargeBlack900,
                ),
                SizedBox(height: 35.v),
                Text(
                  "Forgot your login or password?",
                  style: theme.textTheme.bodyMedium,
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: CustomElevatedButton(
          height: 25.v,
          width: 114.h,
          text: "Create account",
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
