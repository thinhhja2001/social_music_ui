import 'package:flutter/material.dart';
import 'package:sharing_music_app/core/app_export.dart';
import 'package:sharing_music_app/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class ListsendItemWidget extends StatelessWidget {
  ListsendItemWidget();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Align(
        alignment: Alignment.center,
        child: Padding(
          padding: getPadding(
            right: 16,
            bottom: 1,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomIconButton(
                height: 64,
                width: 64,
                shape: IconButtonShape.CircleBorder32,
                padding: IconButtonPadding.PaddingAll15,
                child: CustomImageView(
                  svgPath: ImageConstant.imgSend,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 8,
                ),
                child: Text(
                  "New Post",
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
