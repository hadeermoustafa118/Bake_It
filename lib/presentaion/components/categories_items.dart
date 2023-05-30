import 'package:flutter/material.dart';
class CategoryItem extends StatelessWidget {
  const CategoryItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5.0),
        child: CircleAvatar(
          radius: 42,
          child: Image.asset('assets/images/category.png'),
        ),
      ),
      SizedBox(height: 10,),
      Text('All', ),
    ],);
  }
}
