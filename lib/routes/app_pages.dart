import 'package:get/route_manager.dart';
import 'package:twitter_clear/pages/favourites_page.dart';
import 'package:twitter_clear/pages/tweets_page.dart';
import 'package:twitter_clear/routes/app_routes.dart';

class AppPages {
  static final routes = [
    GetPage(
      name: Routes.TWEETS,
      page: () => const TweetsPage(),
      preventDuplicates: true,
    ),
    GetPage(
      name: Routes.FAVOURITES,
      page: () => const FavouritesPage(),
      preventDuplicates: true,
    ),
  ];
}
