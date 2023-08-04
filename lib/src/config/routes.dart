part of 'routes_import.dart';

@AutoRouterConfig(replaceInRouteName: 'Route')
class Routes extends $Routes {
  @override
  RouteType get defaultRouteType => const RouteType.custom();

  @override
  final List<AutoRoute> routes = [
    CustomRoute(
      page: HomeScreenRoute.page,
      path: '/',
      transitionsBuilder: TransitionsBuilders.fadeIn,
    ),
    CustomRoute(
      page: EpisodesScreenRoute.page,
      path: '/episodes',
      transitionsBuilder: TransitionsBuilders.fadeIn,
    ),
    CustomRoute(
      page: LocationScreenRoute.page,
      path: '/locations',
      transitionsBuilder: TransitionsBuilders.fadeIn,
    ),
    CustomRoute(
      page: CharactersScreenRoute.page,
      path: '/characters',
      transitionsBuilder: TransitionsBuilders.fadeIn,
    ),
    CustomRoute(
      page: CharacterViewRoute.page,
      path: '/character',
      transitionsBuilder: TransitionsBuilders.fadeIn,
    ),
  ];
}
