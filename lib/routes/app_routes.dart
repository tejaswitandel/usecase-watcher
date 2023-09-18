import 'package:flutter/material.dart';
import 'package:tejaswitandel_s_application149/presentation/albums_screen/albums_screen.dart';
import 'package:tejaswitandel_s_application149/presentation/home_page_container_screen/home_page_container_screen.dart';
import 'package:tejaswitandel_s_application149/presentation/setting_screen/setting_screen.dart';
import 'package:tejaswitandel_s_application149/presentation/profile_screen/profile_screen.dart';
import 'package:tejaswitandel_s_application149/presentation/artist_screen/artist_screen.dart';
import 'package:tejaswitandel_s_application149/presentation/album_screen/album_screen.dart';
import 'package:tejaswitandel_s_application149/presentation/list_screen/list_screen.dart';
import 'package:tejaswitandel_s_application149/presentation/login_screen/login_screen.dart';
import 'package:tejaswitandel_s_application149/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String albumsScreen = '/albums_screen';

  static const String homePage = '/home_page';

  static const String homePageContainerScreen = '/home_page_container_screen';

  static const String topPlaylistsPage = '/top_playlists_page';

  static const String settingScreen = '/setting_screen';

  static const String favoritesPage = '/favorites_page';

  static const String profileScreen = '/profile_screen';

  static const String artistsPage = '/artists_page';

  static const String artistScreen = '/artist_screen';

  static const String albumScreen = '/album_screen';

  static const String listScreen = '/list_screen';

  static const String loginScreen = '/login_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    albumsScreen: (context) => AlbumsScreen(),
    homePageContainerScreen: (context) => HomePageContainerScreen(),
    settingScreen: (context) => SettingScreen(),
    profileScreen: (context) => ProfileScreen(),
    artistScreen: (context) => ArtistScreen(),
    albumScreen: (context) => AlbumScreen(),
    listScreen: (context) => ListScreen(),
    loginScreen: (context) => LoginScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
