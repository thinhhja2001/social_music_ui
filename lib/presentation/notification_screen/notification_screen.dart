import 'package:flutter/material.dart';
import 'package:sharing_music_app/core/app_export.dart';
import 'package:sharing_music_app/widgets/custom_switch.dart';

class NotificationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.deepPurpleA200,
        body: Container(
          width: double.maxFinite,
          padding: getPadding(
            left: 16,
            top: 168,
            right: 16,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgNotificationbell,
                height: getVerticalSize(
                  161,
                ),
                width: getHorizontalSize(
                  146,
                ),
                alignment: Alignment.center,
              ),
              Padding(
                padding: getPadding(
                  top: 38,
                ),
                child: Text(
                  "Turn on Notifications",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtInterBold32WhiteA700,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 8,
                ),
                child: Text(
                  "turn on notifications for news updates about socio so you don't miss it",
                  maxLines: null,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtInterRegular16,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 45,
                  bottom: 5,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Notifications",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtInterMedium16,
                    ),
                    CustomSwitch(
                      value: true,
                      onChanged: (value) {},
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
