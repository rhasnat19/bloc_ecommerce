import 'package:ecomm/widgets/widget.dart';
import 'package:flutter/material.dart';

class WishlistScreen extends StatelessWidget {
  static const routeName = '/wishlist';

  const WishlistScreen({super.key});

  static Route route() {
    return MaterialPageRoute(
        settings: const RouteSettings(name: routeName),
        builder: (_) => const WishlistScreen());
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppbar(title: "Wishlist"),
      bottomNavigationBar: CustomNavBar(),
    );
  }
}
