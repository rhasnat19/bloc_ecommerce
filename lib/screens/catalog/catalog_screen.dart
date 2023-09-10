// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:ecomm/widgets/widget.dart';

import '../../model/models.dart';

class CatalogScreen extends StatelessWidget {
  static const routeName = '/catalog';

  const CatalogScreen({
    Key? key,
    required this.category,
  }) : super(key: key);

  static Route route({required Category category}) {
    return MaterialPageRoute(
        settings: const RouteSettings(name: routeName),
        builder: (_) => CatalogScreen(category: category));
  }

  final Category category;
  @override
  Widget build(BuildContext context) {
    final List<Product> categoryProduct =
        Product.products.where((e) => e.category == category.name).toList();
    return Scaffold(
      appBar: CustomAppbar(title: category.name),
      bottomNavigationBar: const CustomNavBar(),
      body: GridView.builder(
        padding: const EdgeInsets.symmetric(
          horizontal: 8.0,
          vertical: 16.0,
        ),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1.15,
        ),
        itemCount: categoryProduct.length,
        itemBuilder: (BuildContext context, int index) {
          return Center(
            child: ProductCard(
              product: categoryProduct[index],
              widthFactors: 2.2,
            ),
          );
        },
      ),
    );
  }
}
