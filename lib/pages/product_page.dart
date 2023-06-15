import 'package:flutter/material.dart';
import 'package:nike_store/components/backdrop.dart';
import 'package:nike_store/components/product_color_picker.dart';
import 'package:nike_store/components/product_size_picker.dart';
import 'package:nike_store/constants.dart';
import 'package:nike_store/extensions/int_extension.dart';
import 'package:nike_store/extensions/string_extensions.dart';
import 'package:nike_store/models/products.dart';

class ProductPage extends StatelessWidget {
  final Product product;

  const ProductPage(this.product, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            AppBar(
              scrolledUnderElevation: 0,
              backgroundColor: product.color,
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.favorite_outline, color: Colors.black),
                ),
                IconButton(
                  onPressed: () => Navigator.of(context).pushNamed('/consulta-cep'),
                  icon: const Icon(Icons.location_on_outlined, color: Colors.black),
                )
              ],
            ),
            Stack(
              children: [
                Positioned(
                  top: 0,
                  child: CustomPaint(
                    size: Size(
                      MediaQuery.of(context).size.width,
                      (MediaQuery.of(context).size.width * 0.6).toDouble(),
                    ),
                    painter: Backdrop(color: product.color),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                  child: Hero(tag: product.id, child: Image.asset(product.images.first)),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(bottom: kDefaultPadding * 4),
              padding: const EdgeInsets.all(kDefaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      FittedBox(
                        child: Text(
                          '${product.brand.toCapitalize()} ${product.title}',
                          style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 24),
                        ),
                      ),
                      Text(
                        product.price.toMoney(),
                        style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 24),
                      ),
                    ],
                  ),
                  Text(product.available ? 'Disponível' : 'Indisponível'),
                  const SizedBox(height: kDefaultPadding),
                  Text(product.description, style: const TextStyle(fontSize: 18)),
                  ProductColorPicker(product),
                  const Text('Escolha o tamanho', style: TextStyle(fontWeight: FontWeight.w700)),
                  ProductSizePicker(product),
                ],
              ),
            )
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FilledButton(
        onPressed: () => Navigator.of(context).pop(),
        style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.black)),
        child: const Text('Adicionar na sacola'),
      ),
    );
  }
}
