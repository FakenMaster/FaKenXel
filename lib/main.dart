import 'package:FaKenXel/router/router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import 'repository/repository.dart';
import 'repository/repository.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    GetIt.I.registerSingleton(Repository());
    
    return MaterialApp(
      title: 'FaKenXel',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      builder: ExtendedNavigator<Router>(
        router: Router(),
      ),
    );
  }
}
