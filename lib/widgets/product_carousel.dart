import 'package:ecomm/widgets/widget.dart';
import 'package:flutter/widgets.dart';

import '../model/models.dart';

class ProductCarousel extends StatelessWidget {
  final List<Product> products;
  const ProductCarousel({
    super.key,
    required this.products,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 165,
      child: ListView.builder(
        itemCount: products.length,
        shrinkWrap: true,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.only(right: 5),
            child: ProductCard(
              product: products[index],
            ),
          );
        },
      ),
    );
  }
}
