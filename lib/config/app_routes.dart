import 'package:ecomm/model/models.dart';
import 'package:flutter/material.dart';

import '../screens/screens.dart';

class AppRouter {
  static Route onGenerateRoute(RouteSettings setting) {
    switch (setting.name) {
      case '/':
        return HomeScreen.route();
      case CartScreen.routeName:
        return CartScreen.route();
      case CatalogScreen.routeName:
        return CatalogScreen.route(category: setting.arguments as Category);
      case ProductScreen.routeName:
        return ProductScreen.route(product: setting.arguments as Product);
      case WishlistScreen.routeName:
        return WishlistScreen.route();
      default:
        return _errorRoute();
    }
  }

  static Route _errorRoute() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: '/error'),
      builder: (_) => Scaffold(
        appBar: AppBar(title: const Text("Error")),
      ),
    );
  }
}
