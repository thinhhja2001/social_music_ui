import 'package:flutter/material.dart';
import 'package:sharing_music_app/core/app_export.dart';
import 'package:sharing_music_app/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class AppbarIconbutton extends StatelessWidget {
  AppbarIconbutton({this.imagePath, this.svgPath, this.margin, this.onTap});

  String? imagePath;

  String? svgPath;

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap!();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: CustomIconButton(
          height: 40,
          width: 40,
          shape: IconButtonShape.CircleBorder20,
          child: CustomImageView(
            svgPath: svgPath,
            imagePath: imagePath,
          ),
        ),
      ),
    );
  }
}
