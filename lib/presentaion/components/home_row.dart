import 'package:flutter/material.dart';
class HomeRow extends StatelessWidget {
  const HomeRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Recently Added',
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
        ),
        Text(
          'See All',
          style: TextStyle(
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}
