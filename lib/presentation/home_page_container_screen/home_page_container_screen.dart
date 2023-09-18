import 'package:flutter/material.dart';
import 'package:tejaswitandel_s_application149/core/app_export.dart';
import 'package:tejaswitandel_s_application149/presentation/artists_page/artists_page.dart';
import 'package:tejaswitandel_s_application149/presentation/favorites_page/favorites_page.dart';
import 'package:tejaswitandel_s_application149/presentation/home_page/home_page.dart';
import 'package:tejaswitandel_s_application149/presentation/top_playlists_page/top_playlists_page.dart';
import 'package:tejaswitandel_s_application149/widgets/custom_bottom_bar.dart';

// ignore_for_file: must_be_immutable
class HomePageContainerScreen extends StatelessWidget {
  HomePageContainerScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: Navigator(
                key: navigatorKey,
                initialRoute: AppRoutes.homePage,
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

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homePage;
      case BottomBarEnum.Top:
        return AppRoutes.topPlaylistsPage;
      case BottomBarEnum.Favorites:
        return AppRoutes.favoritesPage;
      case BottomBarEnum.Search:
        return AppRoutes.artistsPage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homePage:
        return HomePage();
      case AppRoutes.topPlaylistsPage:
        return TopPlaylistsPage();
      case AppRoutes.favoritesPage:
        return FavoritesPage();
      case AppRoutes.artistsPage:
        return ArtistsPage();
      default:
        return DefaultWidget();
    }
  }
}
