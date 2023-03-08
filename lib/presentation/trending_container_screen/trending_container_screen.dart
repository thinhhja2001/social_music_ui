import 'package:flutter/material.dart';
import 'package:sharing_music_app/core/app_export.dart';
import 'package:sharing_music_app/presentation/messages_page/messages_page.dart';
import 'package:sharing_music_app/presentation/notifications_page/notifications_page.dart';
import 'package:sharing_music_app/presentation/profile_page/profile_page.dart';
import 'package:sharing_music_app/presentation/stream_tab_container_page/stream_tab_container_page.dart';
import 'package:sharing_music_app/presentation/trending_tab_container_page/trending_tab_container_page.dart';
import 'package:sharing_music_app/widgets/custom_bottom_bar.dart';

// ignore_for_file: must_be_immutable
class TrendingContainerScreen extends StatelessWidget {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Navigator(
                key: navigatorKey,
                initialRoute: AppRoutes.trendingTabContainerPage,
                onGenerateRoute: (routeSetting) => PageRouteBuilder(
                    pageBuilder: (ctx, ani, ani1) =>
                        getCurrentPage(routeSetting.name!),
                    transitionDuration: Duration(seconds: 0))),
            bottomNavigationBar:
                CustomBottomBar(onChanged: (BottomBarEnum type) {
              Navigator.pushNamed(
                  navigatorKey.currentContext!, getCurrentRoute(type));
            })));
  }

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

  @override
  void onInit(BuildContext context) {}
}
