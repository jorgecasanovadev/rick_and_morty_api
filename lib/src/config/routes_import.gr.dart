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
import 'package:choppi_test/src/ui/modules/characters/model/character_model.dart'
    as _i7;
import 'package:choppi_test/src/ui/modules/characters/views/character_view.dart'
    as _i4;
import 'package:choppi_test/src/ui/modules/episodes/episodes_screen.dart'
    as _i2;
import 'package:choppi_test/src/ui/modules/home/home_screen.dart' as _i1;
import 'package:choppi_test/src/ui/modules/locations/location_screen.dart'
    as _i5;
import 'package:flutter/material.dart' as _i8;

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
      final args = routeData.argsAs<CharacterViewRouteArgs>();
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i4.CharacterView(
          character: args.character,
          key: args.key,
        ),
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
class CharacterViewRoute extends _i6.PageRouteInfo<CharacterViewRouteArgs> {
  CharacterViewRoute({
    required _i7.CharacterModel character,
    _i8.Key? key,
    List<_i6.PageRouteInfo>? children,
  }) : super(
          CharacterViewRoute.name,
          args: CharacterViewRouteArgs(
            character: character,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'CharacterViewRoute';

  static const _i6.PageInfo<CharacterViewRouteArgs> page =
      _i6.PageInfo<CharacterViewRouteArgs>(name);
}

class CharacterViewRouteArgs {
  const CharacterViewRouteArgs({
    required this.character,
    this.key,
  });

  final _i7.CharacterModel character;

  final _i8.Key? key;

  @override
  String toString() {
    return 'CharacterViewRouteArgs{character: $character, key: $key}';
  }
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
