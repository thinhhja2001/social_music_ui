import 'package:flutter/material.dart';
import 'package:sharing_music_app/core/app_export.dart';

// ignore: must_be_immutable
class ListfiveItemWidget extends StatelessWidget {
  ListfiveItemWidget();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: CustomImageView(
        imagePath: ImageConstant.img40167x167,
        height: getSize(
          167,
        ),
        width: getSize(
          167,
        ),
        radius: BorderRadius.circular(
          getHorizontalSize(
            10,
          ),
        ),
        margin: getMargin(
          right: 16,
        ),
      ),
    );
  }
}
