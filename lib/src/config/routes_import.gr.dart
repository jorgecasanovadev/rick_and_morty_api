// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:choppi_test/src/ui/modules/characters/characters_screen.dart'
    as _i3;
import 'package:choppi_test/src/ui/modules/characters/views/character_view.dart'
    as _i4;
import 'package:choppi_test/src/ui/modules/episodes/episodes_screen.dart'
    as _i2;
import 'package:choppi_test/src/ui/modules/home/home_screen.dart' as _i1;
import 'package:choppi_test/src/ui/modules/locations/location_screen.dart'
    as _i5;

abstract class $Routes extends _i6.RootStackRouter {
  $Routes({super.navigatorKey});

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    HomeScreenRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.HomeScreen(),
      );
    },
    EpisodesScreenRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.EpisodesScreen(),
      );
    },
    CharactersScreenRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.CharactersScreen(),
      );
    },
    CharacterViewRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.CharacterView(),
      );
    },
    LocationScreenRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.LocationScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.HomeScreen]
class HomeScreenRoute extends _i6.PageRouteInfo<void> {
  const HomeScreenRoute({List<_i6.PageRouteInfo>? children})
      : super(
          HomeScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeScreenRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i2.EpisodesScreen]
class EpisodesScreenRoute extends _i6.PageRouteInfo<void> {
  const EpisodesScreenRoute({List<_i6.PageRouteInfo>? children})
      : super(
          EpisodesScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'EpisodesScreenRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i3.CharactersScreen]
class CharactersScreenRoute extends _i6.PageRouteInfo<void> {
  const CharactersScreenRoute({List<_i6.PageRouteInfo>? children})
      : super(
          CharactersScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'CharactersScreenRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i4.CharacterView]
class CharacterViewRoute extends _i6.PageRouteInfo<void> {
  const CharacterViewRoute({List<_i6.PageRouteInfo>? children})
      : super(
          CharacterViewRoute.name,
          initialChildren: children,
        );

  static const String name = 'CharacterViewRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i5.LocationScreen]
class LocationScreenRoute extends _i6.PageRouteInfo<void> {
  const LocationScreenRoute({List<_i6.PageRouteInfo>? children})
      : super(
          LocationScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'LocationScreenRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}
