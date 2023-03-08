import '../trending_tab_container_page/widgets/listellipsefifteen_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:sharing_music_app/core/app_export.dart';
import 'package:sharing_music_app/presentation/trending_page/trending_page.dart';
import 'package:sharing_music_app/widgets/app_bar/appbar_circleimage.dart';
import 'package:sharing_music_app/widgets/app_bar/appbar_searchview.dart';
import 'package:sharing_music_app/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class TrendingTabContainerPage extends StatelessWidget {
  TextEditingController group9021Controller = TextEditingController();

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
            controller: group9021Controller,
            margin: getMargin(
              left: 16,
            ),
          ),
          actions: [
            AppbarCircleimage(
              imagePath: ImageConstant.imgEllipse1440x40,
              margin: getMargin(
                left: 16,
                top: 5,
                right: 19,
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
                  113,
                ),
                child: ListView.separated(
                  padding: getPadding(
                    left: 16,
                    top: 25,
                    right: 14,
                  ),
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      height: getVerticalSize(
                        16,
                      ),
                    );
                  },
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return ListellipsefifteenItemWidget();
                  },
                ),
              ),
              Container(
                height: getVerticalSize(
                  30,
                ),
                width: getHorizontalSize(
                  398,
                ),
                margin: getMargin(
                  top: 30,
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
                  548.64,
                ),
                child: TabBarView(
                  //TODO: Please add tab controller
                  children: [
                    TrendingPage(),
                    TrendingPage(),
                    TrendingPage(),
                    TrendingPage(),
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
