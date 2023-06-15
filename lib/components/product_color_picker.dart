import 'package:flutter/material.dart';
import 'package:nike_store/colors.dart';
import 'package:nike_store/constants.dart';
import 'package:nike_store/models/products.dart';

class ProductColorPicker extends StatefulWidget {
  final Product product;

  const ProductColorPicker(
    this.product, {
    super.key,
  });

  @override
  State<ProductColorPicker> createState() => _ProductColorPickerState();
}

class _ProductColorPickerState extends State<ProductColorPicker> {
  int selected = 0;

  void onPress(int index) {
    setState(() {
      selected = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        childAspectRatio: 1,
        mainAxisSpacing: kDefaultPadding,
        crossAxisSpacing: kDefaultPadding,
      ),
      itemCount: widget.product.images.length,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () => onPress(index),
          child: Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
              border: Border.all(
                color: selected == index ? mediumGray : mediumGray.withOpacity(0.2),
                width: selected == index ? 2 : 1,
              ),
              borderRadius: BorderRadius.circular(10),
              color: lightGray,
            ),
            child: Image.asset(
              widget.product.images[index],
              fit: BoxFit.fitWidth,
            ),
          ),
        );
      },
    );
  }
}
