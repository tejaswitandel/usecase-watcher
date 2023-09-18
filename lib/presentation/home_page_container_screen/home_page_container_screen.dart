import 'controller/home_page_container_controller.dart';
import 'package:flutter/material.dart';
import 'package:tejaswitandel_s_application149/core/app_export.dart';
import 'package:tejaswitandel_s_application149/presentation/artists_page/artists_page.dart';
import 'package:tejaswitandel_s_application149/presentation/favorites_page/favorites_page.dart';
import 'package:tejaswitandel_s_application149/presentation/home_page/home_page.dart';
import 'package:tejaswitandel_s_application149/presentation/top_playlists_page/top_playlists_page.dart';
import 'package:tejaswitandel_s_application149/widgets/custom_bottom_bar.dart';

class HomePageContainerScreen extends GetWidget<HomePageContainerController> {
  const HomePageContainerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: Navigator(
                key: Get.nestedKey(1),
                initialRoute: AppRoutes.homePage,
                onGenerateRoute: (routeSetting) => GetPageRoute(
                    page: () => getCurrentPage(routeSetting.name!),
                    transition: Transition.noTransition)),
            bottomNavigationBar:
                CustomBottomBar(onChanged: (BottomBarEnum type) {
              Get.toNamed(getCurrentRoute(type), id: 1);
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
