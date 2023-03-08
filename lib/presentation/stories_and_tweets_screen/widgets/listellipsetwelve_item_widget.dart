import 'package:flutter/material.dart';
import 'package:sharing_music_app/core/app_export.dart';
import 'package:sharing_music_app/widgets/custom_text_form_field.dart';

// ignore: must_be_immutable
class ListellipsetwelveItemWidget extends StatelessWidget {
  ListellipsetwelveItemWidget();

  TextEditingController frame9090Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      child: Container(
        padding: getPadding(
          left: 16,
          right: 16,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: getPadding(
                top: 24,
              ),
              child: Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgEllipse1250x50,
                    height: getSize(
                      50,
                    ),
                    width: getSize(
                      50,
                    ),
                    radius: BorderRadius.circular(
                      getHorizontalSize(
                        25,
                      ),
                    ),
                  ),
                  Container(
                    width: getHorizontalSize(
                      152,
                    ),
                    margin: getMargin(
                      left: 16,
                      top: 2,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Albert O’connor",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtInterSemiBold20,
                        ),
                        Padding(
                          padding: getPadding(
                            top: 5,
                          ),
                          child: Text(
                            "4  hours ago",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtInterRegular14Gray600,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  CustomTextFormField(
                    width: getHorizontalSize(
                      76,
                    ),
                    focusNode: FocusNode(),
                    controller: frame9090Controller,
                    hintText: "Follow",
                    margin: getMargin(
                      top: 9,
                      bottom: 8,
                    ),
                    variant: TextFormFieldVariant.OutlineDeeppurpleA200,
                    shape: TextFormFieldShape.RoundedBorder16,
                    padding: TextFormFieldPadding.PaddingAll7,
                    fontStyle: TextFormFieldFontStyle.InterSemiBold14,
                  ),
                ],
              ),
            ),
            Padding(
              padding: getPadding(
                left: 2,
                top: 15,
                right: 31,
              ),
              child: Text(
                "Introduce I am a photographer who travels around the world everyday, these are some of my works as a photographer.",
                maxLines: null,
                textAlign: TextAlign.left,
                style: AppStyle.txtInterRegular16Gray60001,
              ),
            ),
            Padding(
              padding: getPadding(
                top: 12,
                right: 18,
              ),
              child: Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.img22115x85,
                    height: getVerticalSize(
                      115,
                    ),
                    width: getHorizontalSize(
                      85,
                    ),
                    radius: BorderRadius.circular(
                      getHorizontalSize(
                        5,
                      ),
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.img25115x85,
                    height: getVerticalSize(
                      115,
                    ),
                    width: getHorizontalSize(
                      85,
                    ),
                    radius: BorderRadius.circular(
                      getHorizontalSize(
                        5,
                      ),
                    ),
                    margin: getMargin(
                      left: 8,
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.img411115x85,
                    height: getVerticalSize(
                      115,
                    ),
                    width: getHorizontalSize(
                      85,
                    ),
                    radius: BorderRadius.circular(
                      getHorizontalSize(
                        5,
                      ),
                    ),
                    margin: getMargin(
                      left: 8,
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.img16115x85,
                    height: getVerticalSize(
                      115,
                    ),
                    width: getHorizontalSize(
                      85,
                    ),
                    radius: BorderRadius.circular(
                      getHorizontalSize(
                        5,
                      ),
                    ),
                    margin: getMargin(
                      left: 8,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: getPadding(
                top: 24,
              ),
              child: Row(
                children: [
                  CustomImageView(
                    svgPath: ImageConstant.imgFavorite,
                    height: getVerticalSize(
                      17,
                    ),
                    width: getHorizontalSize(
                      19,
                    ),
                    margin: getMargin(
                      top: 5,
                      bottom: 3,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 8,
                      top: 5,
                      bottom: 4,
                    ),
                    child: Text(
                      "2200",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtInterRegular12DeeppurpleA200,
                    ),
                  ),
                  CustomImageView(
                    svgPath: ImageConstant.imgDashboard,
                    height: getVerticalSize(
                      18,
                    ),
                    width: getHorizontalSize(
                      19,
                    ),
                    margin: getMargin(
                      left: 29,
                      top: 4,
                      bottom: 3,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 8,
                      top: 6,
                      bottom: 3,
                    ),
                    child: Text(
                      "800",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtInterRegular12DeeppurpleA200,
                    ),
                  ),
                  Spacer(),
                  Container(
                    height: getVerticalSize(
                      25,
                    ),
                    width: getHorizontalSize(
                      54,
                    ),
                    child: Stack(
                      alignment: Alignment.centerRight,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgEllipse3025x25,
                          height: getSize(
                            25,
                          ),
                          width: getSize(
                            25,
                          ),
                          radius: BorderRadius.circular(
                            getHorizontalSize(
                              12,
                            ),
                          ),
                          alignment: Alignment.centerLeft,
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgEllipse3125x25,
                          height: getSize(
                            25,
                          ),
                          width: getSize(
                            25,
                          ),
                          radius: BorderRadius.circular(
                            getHorizontalSize(
                              12,
                            ),
                          ),
                          alignment: Alignment.centerRight,
                          margin: getMargin(
                            right: 13,
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgEllipse3225x25,
                          height: getSize(
                            25,
                          ),
                          width: getSize(
                            25,
                          ),
                          radius: BorderRadius.circular(
                            getHorizontalSize(
                              12,
                            ),
                          ),
                          alignment: Alignment.centerRight,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
