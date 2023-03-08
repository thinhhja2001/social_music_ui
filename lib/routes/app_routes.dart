import 'package:flutter/material.dart';
import 'package:sharing_music_app/presentation/splash_screen/splash_screen.dart';
import 'package:sharing_music_app/presentation/login_screen/login_screen.dart';
import 'package:sharing_music_app/presentation/log_in_screen/log_in_screen.dart';
import 'package:sharing_music_app/presentation/forgot_password_screen/forgot_password_screen.dart';
import 'package:sharing_music_app/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:sharing_music_app/presentation/notification_screen/notification_screen.dart';
import 'package:sharing_music_app/presentation/invite_friends_screen/invite_friends_screen.dart';
import 'package:sharing_music_app/presentation/daily_new_tab_container_screen/daily_new_tab_container_screen.dart';
import 'package:sharing_music_app/presentation/trending_container_screen/trending_container_screen.dart';
import 'package:sharing_music_app/presentation/stories_screen/stories_screen.dart';
import 'package:sharing_music_app/presentation/trending_posts_screen/trending_posts_screen.dart';
import 'package:sharing_music_app/presentation/stories_and_tweets_screen/stories_and_tweets_screen.dart';
import 'package:sharing_music_app/presentation/search_screen/search_screen.dart';
import 'package:sharing_music_app/presentation/live_screen/live_screen.dart';
import 'package:sharing_music_app/presentation/for_you_tab_container_screen/for_you_tab_container_screen.dart';
import 'package:sharing_music_app/presentation/page_view_screen/page_view_screen.dart';
import 'package:sharing_music_app/presentation/comments_screen/comments_screen.dart';
import 'package:sharing_music_app/presentation/account_view_screen/account_view_screen.dart';
import 'package:sharing_music_app/presentation/account_details_screen/account_details_screen.dart';
import 'package:sharing_music_app/presentation/chat_screen/chat_screen.dart';
import 'package:sharing_music_app/presentation/friends_screen/friends_screen.dart';
import 'package:sharing_music_app/presentation/detailed_profile_screen/detailed_profile_screen.dart';
import 'package:sharing_music_app/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String loginScreen = '/login_screen';

  static const String logInScreen = '/log_in_screen';

  static const String forgotPasswordScreen = '/forgot_password_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String notificationScreen = '/notification_screen';

  static const String inviteFriendsScreen = '/invite_friends_screen';

  static const String discoverPage = '/discover_page';

  static const String dailyNewPage = '/daily_new_page';

  static const String dailyNewTabContainerScreen =
      '/daily_new_tab_container_screen';

  static const String trendingPage = '/trending_page';

  static const String trendingContainerScreen = '/trending_container_screen';

  static const String trendingTabContainerPage = '/trending_tab_container_page';

  static const String storiesScreen = '/stories_screen';

  static const String trendingPostsScreen = '/trending_posts_screen';

  static const String storiesAndTweetsScreen = '/stories_and_tweets_screen';

  static const String searchScreen = '/search_screen';

  static const String liveScreen = '/live_screen';

  static const String forYouPage = '/for_you_page';

  static const String forYouTabContainerScreen =
      '/for_you_tab_container_screen';

  static const String streamPage = '/stream_page';

  static const String streamTabContainerPage = '/stream_tab_container_page';

  static const String pageViewScreen = '/page_view_screen';

  static const String commentsScreen = '/comments_screen';

  static const String accountViewScreen = '/account_view_screen';

  static const String accountDetailsScreen = '/account_details_screen';

  static const String messagesPage = '/messages_page';

  static const String chatScreen = '/chat_screen';

  static const String friendsScreen = '/friends_screen';

  static const String notificationsPage = '/notifications_page';

  static const String profilePage = '/profile_page';

  static const String detailedProfileScreen = '/detailed_profile_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    splashScreen: (context) => SplashScreen(),
    loginScreen: (context) => LoginScreen(),
    logInScreen: (context) => LogInScreen(),
    forgotPasswordScreen: (context) => ForgotPasswordScreen(),
    signUpScreen: (context) => SignUpScreen(),
    notificationScreen: (context) => NotificationScreen(),
    inviteFriendsScreen: (context) => InviteFriendsScreen(),
    dailyNewTabContainerScreen: (context) => DailyNewTabContainerScreen(),
    trendingContainerScreen: (context) => TrendingContainerScreen(),
    storiesScreen: (context) => StoriesScreen(),
    trendingPostsScreen: (context) => TrendingPostsScreen(),
    storiesAndTweetsScreen: (context) => StoriesAndTweetsScreen(),
    searchScreen: (context) => SearchScreen(),
    liveScreen: (context) => LiveScreen(),
    forYouTabContainerScreen: (context) => ForYouTabContainerScreen(),
    pageViewScreen: (context) => PageViewScreen(),
    commentsScreen: (context) => CommentsScreen(),
    accountViewScreen: (context) => AccountViewScreen(),
    accountDetailsScreen: (context) => AccountDetailsScreen(),
    chatScreen: (context) => ChatScreen(),
    friendsScreen: (context) => FriendsScreen(),
    detailedProfileScreen: (context) => DetailedProfileScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
