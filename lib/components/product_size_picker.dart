import 'package:flutter/material.dart';
import 'package:nike_store/colors.dart';
import 'package:nike_store/constants.dart';
import 'package:nike_store/models/products.dart';

class ProductSizePicker extends StatefulWidget {
  final Product product;

  const ProductSizePicker(this.product, {super.key});

  @override
  State<ProductSizePicker> createState() => _ProductSizePickerState();
}

class _ProductSizePickerState extends State<ProductSizePicker> {
  int selected = 0;

  void onPress(int index) {
    setState(() {
      selected = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true, //mostrar efeito sem
      itemCount: widget.product.sizes.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 5,
        childAspectRatio: 1,
        crossAxisSpacing: kDefaultPadding,
        mainAxisSpacing: kDefaultPadding,
      ),
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () => onPress(index),
          child: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              border: Border.all(
                color: selected == index ? mediumGray : mediumGray.withOpacity(0.2),
                width: selected == index ? 2 : 1,
              ),
              borderRadius: BorderRadius.circular(10),
              color: lightGray,
            ),
            child: Center(
              child: Text(
                widget.product.sizes[index].toString(),
                style: TextStyle(color: mediumGray, fontWeight: selected == index ? FontWeight.w700 : FontWeight.w400),
              ),
            ),
          ),
        );
      },
    );
  }
}
