import 'package:flutter/material.dart';
import 'package:nike_store/colors.dart';
import 'package:nike_store/constants.dart';

class Categories extends StatefulWidget {
  final List<String> categories;

  const Categories(this.categories, {super.key}); //parametro: {nomeado} [posicional opcional] e valor padrao x = 2
  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  int selected = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: SizedBox(
        height: kDefaultPadding * 2,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          separatorBuilder: (context, index) => const SizedBox(width: 12),
          itemCount: widget.categories.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () => selectCategory(index),
              child: Container(
                margin: marginIndex(index, widget.categories.length),
                padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: selected == index ? Colors.black : mediumGray),
                    borderRadius: BorderRadius.circular(30),
                    color: selected == index ? Colors.black : lightGray),
                child: Center(
                    child: Text(
                  widget.categories[index],
                  style: TextStyle(color: selected == index ? Colors.white : mediumGray),
                )),
              ),
            );
          },
        ),
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

  void selectCategory(int index) {
    setState(() {
      selected = index;
    });
  }
}
