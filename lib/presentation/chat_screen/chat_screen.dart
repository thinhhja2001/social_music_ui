import 'package:flutter/material.dart';
import 'package:sharing_music_app/core/app_export.dart';
import 'package:sharing_music_app/widgets/app_bar/appbar_circleimage.dart';
import 'package:sharing_music_app/widgets/app_bar/appbar_image.dart';
import 'package:sharing_music_app/widgets/app_bar/custom_app_bar.dart';
import 'package:sharing_music_app/widgets/custom_button.dart';
import 'package:sharing_music_app/widgets/custom_icon_button.dart';
import 'package:sharing_music_app/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class ChatScreen extends StatelessWidget {
  TextEditingController frameThirtySixController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                height: getVerticalSize(50),
                leadingWidth: 40,
                leading: AppbarImage(
                    height: getSize(24),
                    width: getSize(24),
                    svgPath: ImageConstant.imgClose,
                    margin: getMargin(left: 16, top: 13, bottom: 13),
                    onTap: () => onTapClose1(context)),
                centerTitle: true,
                title: Text("Garry Willer",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtInterBold20Black900),
                actions: [
                  AppbarCircleimage(
                      imagePath: ImageConstant.imgEllipse1440x40,
                      margin: getMargin(left: 16, top: 5, right: 16, bottom: 5))
                ]),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(top: 24, bottom: 24),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Divider(
                          height: getVerticalSize(2),
                          thickness: getVerticalSize(2),
                          color: ColorConstant.deepPurple50),
                      Container(
                          margin: getMargin(top: 41, right: 16),
                          padding: getPadding(
                              left: 22, top: 12, right: 22, bottom: 12),
                          decoration: AppDecoration.fillDeeppurpleA200.copyWith(
                              borderRadius: BorderRadiusStyle.customBorderTL15),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                    padding: getPadding(top: 3),
                                    child: Text("Hi! larry how are you today?",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtInterRegular14WhiteA700))
                              ])),
                      Padding(
                          padding: getPadding(top: 8, right: 16),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text("Delivered",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterRegular12Gray60002),
                                CustomImageView(
                                    svgPath: ImageConstant.imgCheckmark10x15,
                                    height: getVerticalSize(10),
                                    width: getHorizontalSize(15),
                                    margin:
                                        getMargin(left: 12, top: 2, bottom: 2))
                              ])),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              width: getHorizontalSize(286),
                              margin: getMargin(left: 16, top: 23),
                              padding: getPadding(
                                  left: 20, top: 8, right: 20, bottom: 8),
                              decoration: AppDecoration.fillIndigo50.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.customBorderBL15),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                        width: getHorizontalSize(218),
                                        margin: getMargin(top: 2),
                                        child: Text(
                                            "Hello Gerry i'm very good, anyway are you interested in some of my pics?",
                                            maxLines: null,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtHeeboRegular15))
                                  ]))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 16, top: 24),
                              child: Row(children: [
                                Container(
                                    width: getHorizontalSize(109),
                                    child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.img4965x109,
                                              height: getVerticalSize(65),
                                              width: getHorizontalSize(109),
                                              radius: BorderRadius.only(
                                                  topLeft: Radius.circular(
                                                      getHorizontalSize(15)))),
                                          CustomImageView(
                                              imagePath: ImageConstant.img50,
                                              height: getVerticalSize(65),
                                              width: getHorizontalSize(109),
                                              radius: BorderRadius.only(
                                                  bottomLeft: Radius.circular(
                                                      getHorizontalSize(15))),
                                              margin: getMargin(top: 2))
                                        ])),
                                CustomImageView(
                                    imagePath: ImageConstant.img51130x160,
                                    height: getVerticalSize(130),
                                    width: getHorizontalSize(160),
                                    radius: BorderRadius.only(
                                        topRight: Radius.circular(
                                            getHorizontalSize(15)),
                                        bottomRight: Radius.circular(
                                            getHorizontalSize(15))),
                                    margin: getMargin(left: 2, bottom: 2))
                              ]))),
                      CustomButton(
                          height: getVerticalSize(45),
                          width: getHorizontalSize(179),
                          text: "Wow, Awesome !",
                          margin: getMargin(top: 24, right: 16),
                          variant: ButtonVariant.FillDeeppurpleA200,
                          shape: ButtonShape.CustomBorderTL15,
                          padding: ButtonPadding.PaddingAll11,
                          fontStyle: ButtonFontStyle.InterRegular14WhiteA700),
                      Padding(
                          padding: getPadding(top: 8, right: 16, bottom: 5),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text("Delivered",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterRegular12Gray60002),
                                CustomImageView(
                                    svgPath: ImageConstant.imgCheckmark10x15,
                                    height: getVerticalSize(10),
                                    width: getHorizontalSize(15),
                                    margin:
                                        getMargin(left: 12, top: 2, bottom: 2))
                              ]))
                    ])),
            bottomNavigationBar: Padding(
                padding: getPadding(left: 16, right: 16, bottom: 39),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Expanded(
                      child: CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: frameThirtySixController,
                          hintText: "Write a comment",
                          variant: TextFormFieldVariant.FillGray10001,
                          padding: TextFormFieldPadding.PaddingT16_2,
                          fontStyle:
                              TextFormFieldFontStyle.InterMedium14Gray50002_1,
                          textInputAction: TextInputAction.done)),
                  CustomIconButton(
                      height: 50,
                      width: 50,
                      margin: getMargin(left: 16),
                      padding: IconButtonPadding.PaddingAll15,
                      child:
                          CustomImageView(svgPath: ImageConstant.imgSend50x50))
                ]))));
  }

  onTapClose1(BuildContext context) {
    Navigator.pop(context);
  }
}
