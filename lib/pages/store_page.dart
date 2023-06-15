import 'package:flutter/material.dart';
import 'package:nike_store/colors.dart';
import 'package:nike_store/components/categories.dart';
import 'package:nike_store/components/featured_product.dart';
import 'package:nike_store/constants.dart';
import 'package:nike_store/extensions/int_extension.dart';
import 'package:nike_store/models/products.dart';
import 'package:nike_store/pages/product_page.dart';

class StorePage extends StatelessWidget {
  const StorePage({super.key});

  onPress(context, index) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ProductPage(products[index]),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.search))],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: Text(
                'Store',
                style: Theme.of(context).textTheme.headlineLarge?.copyWith(fontWeight: FontWeight.bold),
              ),
            ),
            const Categories(categories),
            FeaturedProduct(products),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Text('${products.length} opções'.toUpperCase()), //fazer com toString() primeiro
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                separatorBuilder: (context, index) => const Divider(),
                itemCount: products.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () => onPress(context, index),
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.only(right: kDefaultPadding),
                          height: 60,
                          child: Image.asset(products[index].images.first),
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                products[index].title,
                                style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
                              ),
                              Text(
                                products[index].price.toMoney(),
                                style: const TextStyle(color: mediumGray),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: kDefaultPadding * 2),
          ],
        ),
      ),
    );
  }
}
