import 'package:flutter/material.dart';

import '../model/models.dart';

class ProductCard extends StatelessWidget {
  final Product product;
  final double widthFactors;
  const ProductCard({
    super.key,
    required this.product,
    this.widthFactors = 2.5,
  });

  @override
  Widget build(BuildContext context) {
    double widthValue = MediaQuery.of(context).size.width / widthFactors;
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed('/product', arguments: product);
      },
      child: Stack(
        children: [
          SizedBox(
            width: widthValue,
            height: 150,
            child: Image.network(
              product.imageUrl,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            bottom: 10,
            child: Container(
              width: widthValue,
              height: 80,
              decoration: BoxDecoration(color: Colors.black.withAlpha(50)),
            ),
          ),
          Positioned(
            left: 5,
            bottom: 15,
            child: Container(
              width: widthValue - 10,
              height: 70,
              decoration: const BoxDecoration(color: Colors.black),
              padding: const EdgeInsets.all(8),
              child: Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          product.name,
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall!
                              .copyWith(
                                color: Colors.white,
                              ),
                        ),
                        Text(
                          "\$${product.price}",
                          style:
                              Theme.of(context).textTheme.titleSmall!.copyWith(
                                    color: Colors.white,
                                  ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.add_circle,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
