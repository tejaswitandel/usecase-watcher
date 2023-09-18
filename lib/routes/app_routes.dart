import 'package:tejaswitandel_s_application149/presentation/albums_screen/albums_screen.dart';
import 'package:tejaswitandel_s_application149/presentation/albums_screen/binding/albums_binding.dart';
import 'package:tejaswitandel_s_application149/presentation/home_page_container_screen/home_page_container_screen.dart';
import 'package:tejaswitandel_s_application149/presentation/home_page_container_screen/binding/home_page_container_binding.dart';
import 'package:tejaswitandel_s_application149/presentation/setting_screen/setting_screen.dart';
import 'package:tejaswitandel_s_application149/presentation/setting_screen/binding/setting_binding.dart';
import 'package:tejaswitandel_s_application149/presentation/profile_screen/profile_screen.dart';
import 'package:tejaswitandel_s_application149/presentation/profile_screen/binding/profile_binding.dart';
import 'package:tejaswitandel_s_application149/presentation/artist_screen/artist_screen.dart';
import 'package:tejaswitandel_s_application149/presentation/artist_screen/binding/artist_binding.dart';
import 'package:tejaswitandel_s_application149/presentation/album_screen/album_screen.dart';
import 'package:tejaswitandel_s_application149/presentation/album_screen/binding/album_binding.dart';
import 'package:tejaswitandel_s_application149/presentation/list_screen/list_screen.dart';
import 'package:tejaswitandel_s_application149/presentation/list_screen/binding/list_binding.dart';
import 'package:tejaswitandel_s_application149/presentation/login_screen/login_screen.dart';
import 'package:tejaswitandel_s_application149/presentation/login_screen/binding/login_binding.dart';
import 'package:tejaswitandel_s_application149/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:tejaswitandel_s_application149/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

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

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: albumsScreen,
      page: () => AlbumsScreen(),
      bindings: [
        AlbumsBinding(),
      ],
    ),
    GetPage(
      name: homePageContainerScreen,
      page: () => HomePageContainerScreen(),
      bindings: [
        HomePageContainerBinding(),
      ],
    ),
    GetPage(
      name: settingScreen,
      page: () => SettingScreen(),
      bindings: [
        SettingBinding(),
      ],
    ),
    GetPage(
      name: profileScreen,
      page: () => ProfileScreen(),
      bindings: [
        ProfileBinding(),
      ],
    ),
    GetPage(
      name: artistScreen,
      page: () => ArtistScreen(),
      bindings: [
        ArtistBinding(),
      ],
    ),
    GetPage(
      name: albumScreen,
      page: () => AlbumScreen(),
      bindings: [
        AlbumBinding(),
      ],
    ),
    GetPage(
      name: listScreen,
      page: () => ListScreen(),
      bindings: [
        ListBinding(),
      ],
    ),
    GetPage(
      name: loginScreen,
      page: () => LoginScreen(),
      bindings: [
        LoginBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => AlbumsScreen(),
      bindings: [
        AlbumsBinding(),
      ],
    )
  ];
}
