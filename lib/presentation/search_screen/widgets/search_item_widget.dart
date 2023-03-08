import 'package:flutter/material.dart';
import 'package:sharing_music_app/core/app_export.dart';
import 'package:sharing_music_app/widgets/custom_button.dart';

// ignore: must_be_immutable
class SearchItemWidget extends StatelessWidget {
  SearchItemWidget();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgEllipse550x50,
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
            158,
          ),
          margin: getMargin(
            left: 24,
            top: 1,
            bottom: 1,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Kevin Allsrub",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtInterSemiBold20,
              ),
              Padding(
                padding: getPadding(
                  top: 4,
                ),
                child: Text(
                  "Your’e friends on twitter",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtInterRegular14Gray700,
                ),
              ),
            ],
          ),
        ),
        Spacer(),
        CustomButton(
          height: getVerticalSize(
            33,
          ),
          width: getHorizontalSize(
            76,
          ),
          text: "Follow",
          margin: getMargin(
            top: 9,
            bottom: 8,
          ),
        ),
      ],
    );
  }
}
