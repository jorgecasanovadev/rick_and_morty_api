part of 'routes_import.dart';

@AutoRouterConfig(replaceInRouteName: 'Route')
class Routes extends $Routes {
  @override
  RouteType get defaultRouteType => const RouteType.custom();

  @override
  final List<AutoRoute> routes = [
    CustomRoute(
      page: HomeScreenRoute.page,
      path: '/home',
      transitionsBuilder: TransitionsBuilders.fadeIn,
    ),
    CustomRoute(
      page: EpisodesScreenRoute.page,
      path: '/episodes',
      transitionsBuilder: TransitionsBuilders.slideRight,
    ),
    CustomRoute(
      page: LocationScreenRoute.page,
      path: '/locations',
      transitionsBuilder: TransitionsBuilders.slideBottom,
    ),
    CustomRoute(
      page: CharactersScreenRoute.page,
      path: '/characters',
      transitionsBuilder: TransitionsBuilders.slideLeft,
    ),
    CustomRoute(
      page: CharacterViewRoute.page,
      transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
    ),
  ];
}
