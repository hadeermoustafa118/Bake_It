import 'package:flutter/material.dart';

class HomeRow extends StatelessWidget {
  const HomeRow({Key? key, required this.title}) : super(key: key);

  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
        ),
        const Text(
          'See All',
          style: TextStyle(
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}
