import 'package:flutter/material.dart';
import 'package:restaurant_app/utils/routes/routes.dart';
import 'package:restaurant_app/utils/routes/routes_name.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: RoutesName.homeRoute,
    onGenerateRoute: Routes.generateRoute,
  ));
}
