// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_route/auto_route.dart';
import 'package:FaKenXel/ui/page/photo_page.dart';
import 'package:FaKenXel/ui/page/video_play_page.dart';

abstract class Routes {
  static const homePage = '/home-page';
  static const videoPlayPage = '/';
  static const all = {
    homePage,
    videoPlayPage,
  };
}

class Router extends RouterBase {
  @override
  Set<String> get allRoutes => Routes.all;

  @Deprecated('call ExtendedNavigator.ofRouter<Router>() directly')
  static ExtendedNavigatorState get navigator =>
      ExtendedNavigator.ofRouter<Router>();

  @override
  Route<dynamic> onGenerateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case Routes.homePage:
        return MaterialPageRoute<dynamic>(
          builder: (context) => HomePage(),
          settings: settings,
        );
      case Routes.videoPlayPage:
        if (hasInvalidArgs<VideoPlayPageArguments>(args)) {
          return misTypedArgsRoute<VideoPlayPageArguments>(args);
        }
        final typedArgs =
            args as VideoPlayPageArguments ?? VideoPlayPageArguments();
        return MaterialPageRoute<dynamic>(
          builder: (context) => VideoPlayPage(title: typedArgs.title),
          settings: settings,
        );
      default:
        return unknownRoutePage(settings.name);
    }
  }
}

// *************************************************************************
// Arguments holder classes
// **************************************************************************

//VideoPlayPage arguments holder class
class VideoPlayPageArguments {
  final String title;
  VideoPlayPageArguments({this.title = 'Chewie Demo'});
}
