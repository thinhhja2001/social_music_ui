import 'package:flutter/material.dart';
import 'package:sharing_music_app/core/app_export.dart';

// ignore: must_be_immutable
class Listellipsefifteen3ItemWidget extends StatelessWidget {
  Listellipsefifteen3ItemWidget();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Align(
        alignment: Alignment.centerRight,
        child: Padding(
          padding: getPadding(
            right: 20,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: getVerticalSize(
                  54,
                ),
                width: getHorizontalSize(
                  52,
                ),
                child: Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgEllipse1554x521,
                      height: getVerticalSize(
                        54,
                      ),
                      width: getHorizontalSize(
                        52,
                      ),
                      radius: BorderRadius.circular(
                        getHorizontalSize(
                          27,
                        ),
                      ),
                      alignment: Alignment.center,
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Container(
                        height: getSize(
                          13,
                        ),
                        width: getSize(
                          13,
                        ),
                        decoration: BoxDecoration(
                          color: ColorConstant.greenA700,
                          borderRadius: BorderRadius.circular(
                            getHorizontalSize(
                              6,
                            ),
                          ),
                          border: Border.all(
                            color: ColorConstant.whiteA700,
                            width: getHorizontalSize(
                              2,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 13,
                ),
                child: Text(
                  "Roy",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtInterMedium12,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
