import 'package:flutter/material.dart';
import 'package:sharing_music_app/core/app_export.dart';

// ignore: must_be_immutable
class AppbarCircleimage extends StatelessWidget {
  AppbarCircleimage({this.imagePath, this.svgPath, this.margin, this.onTap});

  String? imagePath;

  String? svgPath;

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadiusStyle.circleBorder20,
      onTap: () {
        onTap!();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: CustomImageView(
          svgPath: svgPath,
          imagePath: imagePath,
          height: getSize(
            40,
          ),
          width: getSize(
            40,
          ),
          fit: BoxFit.contain,
          radius: BorderRadius.circular(
            getHorizontalSize(
              20,
            ),
          ),
        ),
      ),
    );
  }
}
