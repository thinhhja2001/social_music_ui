import 'package:flutter/material.dart';
import 'package:sharing_music_app/core/app_export.dart';

// ignore: must_be_immutable
class ForyouItemWidget extends StatelessWidget {
  ForyouItemWidget();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Align(
        alignment: Alignment.topRight,
        child: Container(
          height: getVerticalSize(
            251,
          ),
          width: getHorizontalSize(
            152,
          ),
          margin: getMargin(
            right: 14,
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.img43251x152,
                height: getVerticalSize(
                  251,
                ),
                width: getHorizontalSize(
                  152,
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
                    all: 16,
                  ),
                  decoration:
                      AppDecoration.gradientBlack9009eBlack9009e2.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder15,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgEllipse930x301,
                        height: getSize(
                          30,
                        ),
                        width: getSize(
                          30,
                        ),
                        radius: BorderRadius.circular(
                          getHorizontalSize(
                            15,
                          ),
                        ),
                        margin: getMargin(
                          top: 189,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 10,
                          top: 196,
                          right: 26,
                          bottom: 7,
                        ),
                        child: Text(
                          "Elisa Carl",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtInterSemiBold12,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
