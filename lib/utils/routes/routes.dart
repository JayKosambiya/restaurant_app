import 'package:flutter/material.dart';
import 'package:restaurant_app/utils/routes/routes_name.dart';
import 'package:restaurant_app/view/home.dart';
import 'package:restaurant_app/view/menu.dart';



class Routes{

  static Route<dynamic> generateRoute(RouteSettings setting){

    switch(setting.name){

      case RoutesName.homeRoute:
        return MaterialPageRoute(builder: (BuildContext context) => const HomePage());
      case RoutesName.menuRoute:
        return MaterialPageRoute(builder: (BuildContext context) => const MenuPage());
      default:
        return MaterialPageRoute(builder: (_) {
          return const Scaffold(
            backgroundColor: Colors.black,
            body: Center(
              child: Text('No route set', style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),),
            ),
          );
        });


    }
  }

}