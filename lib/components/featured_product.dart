import 'package:flutter/material.dart';
import 'package:nike_store/constants.dart';
import 'dart:math' as math;

import 'package:nike_store/models/products.dart';
import 'package:nike_store/pages/product_page.dart';

class FeaturedProduct extends StatelessWidget {
  final List<Product> allProducts;
  const FeaturedProduct(this.allProducts, {super.key});

  @override
  Widget build(BuildContext context) {
    final highlightItemsSize = MediaQuery.of(context).size.width - 100;
    final products = allProducts.where((e) => e.featuredProduct).toList();

    return SizedBox(
      height: 300,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        separatorBuilder: (_, index) => const SizedBox(width: kDefaultPadding),
        itemCount: products.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => ProductPage(products[index]))), // criar depois
            child: Container(
              margin: marginIndex(index, 4),
              height: 20,
              width: highlightItemsSize,
              //comecar com Row
              child: Stack(
                children: [
                  IntrinsicWidth(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(kDefaultPadding),
                        color: products[index].color,
                      ),
                      width: highlightItemsSize * 0.85,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(kDefaultPadding),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          products[index].title,
                          style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 18, fontStyle: FontStyle.italic),
                        ),
                        Container(
                          width: 50,
                          padding: const EdgeInsets.only(top: kDefaultPadding / 2),
                          child: Hero(tag: products[index].id, child: Image.asset("assets/images/nike_logo.png")),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    right: 0,
                    bottom: 0,
                    top: 0,
                    child: IntrinsicWidth(
                      child: Transform.rotate(
                        angle: -math.pi / 7,
                        child: SizedBox(
                          width: highlightItemsSize * 0.9,
                          child: Image.asset(products[index].images.first),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  EdgeInsets? marginIndex(int index, int length) {
    if (index == 0) {
      return const EdgeInsets.only(left: kDefaultPadding);
    } else if (index == (length - 1)) {
      return const EdgeInsets.only(right: kDefaultPadding);
    }
    return null;
  }
}
