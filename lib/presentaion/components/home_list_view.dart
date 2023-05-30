import 'package:flutter/material.dart';

import 'categories_items.dart';
class HomeListView extends StatelessWidget {
  const HomeListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 120,
        width: MediaQuery.of(context).size.width,
        child: ListView.builder(
          itemBuilder: (context, index) => const CategoryItem(),
          itemCount: 10,
          scrollDirection: Axis.horizontal,
        ),);
  }
}
