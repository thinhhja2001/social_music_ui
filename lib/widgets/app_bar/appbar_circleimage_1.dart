import 'package:flutter/material.dart';
import 'package:sharing_music_app/core/app_export.dart';

// ignore: must_be_immutable
class AppbarCircleimage1 extends StatelessWidget {
  AppbarCircleimage1({this.imagePath, this.svgPath, this.margin, this.onTap});

  String? imagePath;

  String? svgPath;

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadiusStyle.circleBorder25,
      onTap: () {
        onTap!();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: CustomImageView(
          svgPath: svgPath,
          imagePath: imagePath,
          height: getSize(
            50,
          ),
          width: getSize(
            50,
          ),
          fit: BoxFit.contain,
          radius: BorderRadius.circular(
            getHorizontalSize(
              25,
            ),
          ),
        ),
      ),
    );
  }
}
