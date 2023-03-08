import 'package:flutter/material.dart';
import 'package:sharing_music_app/core/app_export.dart';
import 'package:sharing_music_app/widgets/custom_button.dart';
import 'package:sharing_music_app/widgets/custom_icon_button.dart';
import 'package:sharing_music_app/widgets/custom_text_form_field.dart';
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class LogInScreen extends StatelessWidget {
  TextEditingController frameThirtyController = TextEditingController();

  TextEditingController frameThirtyOneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.deepPurpleA200,
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 15, top: 3, right: 15, bottom: 3),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomIconButton(
                          height: 44,
                          width: 44,
                          margin: getMargin(left: 1),
                          shape: IconButtonShape.RoundedBorder15,
                          onTap: () {
                            onTapBtnArrowleft(context);
                          },
                          child: CustomImageView(
                              svgPath: ImageConstant.imgArrowleftWhiteA7001)),
                      Padding(
                          padding: getPadding(left: 1, top: 74),
                          child: Text("Welcome to Social",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterBold32WhiteA700)),
                      Padding(
                          padding: getPadding(left: 1, top: 13),
                          child: Text("Login your account",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterRegular16WhiteA700)),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: frameThirtyController,
                          hintText: "Email Id",
                          margin: getMargin(left: 1, top: 37),
                          fontStyle:
                              TextFormFieldFontStyle.InterMedium16WhiteA700,
                          textInputType: TextInputType.emailAddress),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: frameThirtyOneController,
                          hintText: "Password",
                          margin: getMargin(left: 1, top: 24),
                          padding: TextFormFieldPadding.PaddingT16,
                          fontStyle:
                              TextFormFieldFontStyle.InterMedium16WhiteA700,
                          textInputAction: TextInputAction.done,
                          textInputType: TextInputType.visiblePassword,
                          suffix: Container(
                              margin: getMargin(
                                  left: 30, top: 13, right: 16, bottom: 13),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgEye)),
                          suffixConstraints:
                              BoxConstraints(maxHeight: getVerticalSize(50)),
                          isObscureText: true),
                      Align(
                          alignment: Alignment.centerRight,
                          child: GestureDetector(
                              onTap: () {
                                onTapTxtForgotPassword(context);
                              },
                              child: Padding(
                                  padding: getPadding(top: 22),
                                  child: Text("Forgot Password?",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtInterRegular16WhiteA700)))),
                      CustomButton(
                          height: getVerticalSize(50),
                          text: "Log In",
                          margin: getMargin(left: 1, top: 38, bottom: 5),
                          variant: ButtonVariant.FillWhiteA700,
                          shape: ButtonShape.CircleBorder25,
                          padding: ButtonPadding.PaddingAll11,
                          fontStyle:
                              ButtonFontStyle.InterMedium18DeeppurpleA200)
                    ]))));
  }

  onTapBtnArrowleft(BuildContext context) {
    Navigator.pop(context);
  }

  onTapTxtForgotPassword(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.forgotPasswordScreen);
  }
}
