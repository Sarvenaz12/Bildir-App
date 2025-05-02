import 'package:dummy_projects/Features/screenss/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:routemaster/routemaster.dart';

final loggedOutRoute = RouteMap(routes: {
  "/": (_) => const MaterialPage(child:LoginScreen()) //will return Log In screen
}
);