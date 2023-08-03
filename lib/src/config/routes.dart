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
      transitionsBuilder: TransitionsBuilders.fadeIn,
    ),
    CustomRoute(
      page: CharactersScreenRoute.page,
      transitionsBuilder: TransitionsBuilders.fadeIn,
    ),
    CustomRoute(
      page: CharacterViewRoute.page,
      transitionsBuilder: TransitionsBuilders.fadeIn,
    ),
  ];
}
