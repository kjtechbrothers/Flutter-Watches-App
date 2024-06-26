import 'package:flutter/material.dart';
import 'package:kj_watches/items_screen.dart';
import 'package:kj_watches/splash_screen.dart';
import 'package:kj_watches/utils/routes_name.dart';

class Routes{
  static Route<dynamic> generateRoute(RouteSettings settings){
    switch(settings.name){
      case RouteName.splashScreen:
      return MaterialPageRoute(builder: (context)=> const SplashScreen());
      case RouteName.itemsScreen:
        return MaterialPageRoute(builder: (context)=> const ItemsScreen());
      default:
        return MaterialPageRoute(builder: (context){
          return const Scaffold(
            body: Center(child: Text('No route defined')),
          );
        });
    }
  }
}