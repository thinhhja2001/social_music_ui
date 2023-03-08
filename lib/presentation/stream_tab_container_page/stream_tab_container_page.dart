import 'package:flutter/material.dart';
import 'package:sharing_music_app/core/app_export.dart';
import 'package:sharing_music_app/presentation/stream_page/stream_page.dart';
import 'package:sharing_music_app/widgets/app_bar/appbar_iconbutton.dart';
import 'package:sharing_music_app/widgets/app_bar/appbar_searchview.dart';
import 'package:sharing_music_app/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class StreamTabContainerPage extends StatelessWidget {
  TextEditingController group9020Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        appBar: CustomAppBar(
          height: getVerticalSize(
            50,
          ),
          title: AppbarSearchview(
            hintText: "Search",
            controller: group9020Controller,
            margin: getMargin(
              left: 16,
            ),
          ),
          actions: [
            AppbarIconbutton(
              svgPath: ImageConstant.imgCamera,
              margin: getMargin(
                left: 16,
                top: 5,
                right: 16,
                bottom: 5,
              ),
            ),
          ],
        ),
        body: Container(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: getVerticalSize(
                  30,
                ),
                width: getHorizontalSize(
                  398,
                ),
                margin: getMargin(
                  top: 25,
                ),
                child: TabBar(
                  //TODO: Please add tab controller
                  labelColor: ColorConstant.deepPurpleA200,
                  unselectedLabelColor: ColorConstant.deepPurple200,
                  tabs: [
                    Tab(
                      child: Text(
                        "Trending",
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Tab(
                      child: Text(
                        "Latest",
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Tab(
                      child: Text(
                        "Discover",
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Tab(
                      child: Text(
                        "Daily New",
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: getVerticalSize(
                  666.64,
                ),
                child: TabBarView(
                  //TODO: Please add tab controller
                  children: [
                    StreamPage(),
                    StreamPage(),
                    StreamPage(),
                    StreamPage(),
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
