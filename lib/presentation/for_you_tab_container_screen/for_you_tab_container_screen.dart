import 'package:flutter/material.dart';
import 'package:sharing_music_app/core/app_export.dart';
import 'package:sharing_music_app/presentation/for_you_page/for_you_page.dart';
import 'package:sharing_music_app/widgets/app_bar/appbar_circleimage_1.dart';
import 'package:sharing_music_app/widgets/app_bar/appbar_image.dart';
import 'package:sharing_music_app/widgets/app_bar/appbar_subtitle.dart';
import 'package:sharing_music_app/widgets/app_bar/appbar_subtitle_3.dart';
import 'package:sharing_music_app/widgets/app_bar/custom_app_bar.dart';

class ForYouTabContainerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
          height: size.height,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Align(
                alignment: Alignment.center,
                child: Container(
                  height: size.height,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        ImageConstant.imgGroup2576,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                          height: getVerticalSize(
                            185,
                          ),
                          width: double.maxFinite,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment(
                                0.5,
                                0,
                              ),
                              end: Alignment(
                                0.5,
                                1,
                              ),
                              colors: [
                                ColorConstant.black9007f,
                                ColorConstant.gray40000,
                              ],
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          margin: getMargin(
                            right: 1,
                          ),
                          decoration: AppDecoration.gradientGray40000Black900ad,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CustomAppBar(
                                height: size.height,
                                leadingWidth: 66,
                                leading: AppbarCircleimage1(
                                  imagePath: ImageConstant.imgEllipse950x50,
                                  margin: getMargin(
                                    left: 16,
                                  ),
                                ),
                                title: Padding(
                                  padding: getPadding(
                                    left: 24,
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      AppbarSubtitle(
                                        text: "Lucas Anna ",
                                      ),
                                      AppbarSubtitle3(
                                        text: "35:16",
                                        margin: getMargin(
                                          top: 4,
                                          right: 76,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                actions: [
                                  AppbarImage(
                                    height: getSize(
                                      24,
                                    ),
                                    width: getSize(
                                      24,
                                    ),
                                    svgPath: ImageConstant.imgClose24x24,
                                    margin: getMargin(
                                      left: 16,
                                      top: 13,
                                      right: 16,
                                      bottom: 13,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: getVerticalSize(
                        26,
                      ),
                      width: getHorizontalSize(
                        359,
                      ),
                      margin: getMargin(
                        left: 16,
                      ),
                      child: TabBar(
                        //TODO: Please add tab controller
                        labelColor: ColorConstant.whiteA700,
                        unselectedLabelColor: ColorConstant.whiteA70099,
                        tabs: [
                          Tab(
                            child: Text(
                              "For You",
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          Tab(
                            child: Text(
                              "Following",
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          Tab(
                            child: Text(
                              "Trending",
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: getVerticalSize(
                        337,
                      ),
                      child: TabBarView(
                        //TODO: Please add tab controller
                        children: [
                          ForYouPage(),
                          ForYouPage(),
                          ForYouPage(),
                        ],
                      ),
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
