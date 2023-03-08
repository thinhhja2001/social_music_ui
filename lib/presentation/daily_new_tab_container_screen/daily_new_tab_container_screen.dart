import 'package:flutter/material.dart';
import 'package:sharing_music_app/core/app_export.dart';
import 'package:sharing_music_app/presentation/daily_new_page/daily_new_page.dart';
import 'package:sharing_music_app/presentation/discover_page/discover_page.dart';
import 'package:sharing_music_app/presentation/messages_page/messages_page.dart';
import 'package:sharing_music_app/presentation/notifications_page/notifications_page.dart';
import 'package:sharing_music_app/presentation/profile_page/profile_page.dart';
import 'package:sharing_music_app/presentation/stream_tab_container_page/stream_tab_container_page.dart';
import 'package:sharing_music_app/presentation/trending_tab_container_page/trending_tab_container_page.dart';
import 'package:sharing_music_app/widgets/app_bar/appbar_circleimage.dart';
import 'package:sharing_music_app/widgets/app_bar/appbar_searchview.dart';
import 'package:sharing_music_app/widgets/app_bar/custom_app_bar.dart';
import 'package:sharing_music_app/widgets/custom_bottom_bar.dart';

class DailyNewTabContainerScreen extends StatelessWidget {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

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
          width: getHorizontalSize(
            431,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: getVerticalSize(
                  30,
                ),
                width: getHorizontalSize(
                  410,
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
                  666.77,
                ),
                child: TabBarView(
                  //TODO: Please add tab controller
                  children: [
                    DailyNewPage(),
                    DailyNewPage(),
                    DiscoverPage(),
                    DailyNewPage(),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: CustomBottomBar(
          onChanged: (BottomBarEnum type) {
            Navigator.pushNamed(
                navigatorKey.currentContext!, getCurrentRoute(type));
          },
        ),
      ),
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.trendingTabContainerPage;
      case BottomBarEnum.Streams:
        return AppRoutes.streamTabContainerPage;
      case BottomBarEnum.Messages:
        return AppRoutes.messagesPage;
      case BottomBarEnum.Notifications:
        return AppRoutes.notificationsPage;
      case BottomBarEnum.Profile:
        return AppRoutes.profilePage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.trendingTabContainerPage:
        return TrendingTabContainerPage();
      case AppRoutes.streamTabContainerPage:
        return StreamTabContainerPage();
      case AppRoutes.messagesPage:
        return MessagesPage();
      case AppRoutes.notificationsPage:
        return NotificationsPage();
      case AppRoutes.profilePage:
        return ProfilePage();
      default:
        return DefaultWidget();
    }
  }
}
