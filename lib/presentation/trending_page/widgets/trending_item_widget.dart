import 'package:flutter/material.dart';
import 'package:sharing_music_app/core/app_export.dart';

// ignore: must_be_immutable
class TrendingItemWidget extends StatelessWidget {
  TrendingItemWidget();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      child: Container(
        decoration: AppDecoration.outlineBlack90019.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder15,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: getVerticalSize(
                221,
              ),
              width: getHorizontalSize(
                382,
              ),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.img40221x3821,
                    height: getVerticalSize(
                      221,
                    ),
                    width: getHorizontalSize(
                      382,
                    ),
                    radius: BorderRadius.circular(
                      getHorizontalSize(
                        15,
                      ),
                    ),
                    alignment: Alignment.center,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      padding: getPadding(
                        left: 16,
                        top: 18,
                        right: 16,
                        bottom: 18,
                      ),
                      decoration:
                          AppDecoration.gradientBlack9009eBlack9009e1.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder15,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgEllipse750x50,
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
                            margin: getMargin(
                              top: 135,
                            ),
                          ),
                          Container(
                            width: getHorizontalSize(
                              98,
                            ),
                            margin: getMargin(
                              left: 16,
                              top: 136,
                              right: 186,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "Rick Onad",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterSemiBold20WhiteA700,
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 5,
                                  ),
                                  child: Text(
                                    "40 min ago",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterRegular14WhiteA700,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: getPadding(
                left: 16,
                top: 22,
                right: 30,
              ),
              child: Text(
                "This is the moment where i take a photo of a couple hugging in a beautiful rice field.",
                maxLines: null,
                textAlign: TextAlign.left,
                style: AppStyle.txtInterRegular16,
              ),
            ),
            Padding(
              padding: getPadding(
                left: 16,
                top: 27,
                bottom: 52,
              ),
              child: Row(
                children: [
                  Padding(
                    padding: getPadding(
                      top: 1,
                    ),
                    child: Text(
                      "#huge",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtInterRegular14WhiteA700,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 30,
                      top: 1,
                    ),
                    child: Text(
                      "#fotography",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtInterRegular14WhiteA700,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 30,
                      bottom: 1,
                    ),
                    child: Text(
                      "#nature",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtInterRegular14WhiteA700,
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
