// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:ecomm/model/models.dart';
import 'package:ecomm/widgets/widget.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/';

  const HomeScreen({super.key});

  static Route route() {
    return MaterialPageRoute(
        settings: const RouteSettings(name: routeName),
        builder: (_) => const HomeScreen());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(title: "Ecommerce App"),
      bottomNavigationBar: const CustomNavBar(),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            CarouselSlider(
              options: CarouselOptions(
                aspectRatio: 1.5,
                viewportFraction: 0.9,
                enlargeCenterPage: true,
                enlargeStrategy: CenterPageEnlargeStrategy.height,
              ),
              items: Category.categories
                  .map((e) => HeroCarouselCard(category: e))
                  .toList(),
            ),
            SelectionTile(title: "Recommended".toUpperCase()),
            ProductCarousel(
              products: Product.products
                  .where((element) => element.isRecommended)
                  .toList(),
            ),
            SelectionTile(title: "most Popular".toUpperCase()),
            ProductCarousel(
              products: Product.products
                  .where((element) => element.isPopular)
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}
