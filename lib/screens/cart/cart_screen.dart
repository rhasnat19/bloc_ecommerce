import 'package:ecomm/widgets/widget.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  static const routeName = '/cart';

  const CartScreen({super.key});

  static Route route() {
    return MaterialPageRoute(
        settings: const RouteSettings(name: routeName),
        builder: (_) => const CartScreen());
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppbar(title: "Cart"),
      bottomNavigationBar: CustomNavBar(),
    );
  }
}
