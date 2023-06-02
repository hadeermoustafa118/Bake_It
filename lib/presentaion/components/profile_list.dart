import 'package:bakeryorder/presentaion/components/home_row.dart';
import 'package:flutter/material.dart';

class ProfileList extends StatelessWidget {
  const ProfileList({Key? key, required this.title, required this.imageName})
      : super(key: key);
  final String title;
  final String imageName;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HomeRow(title: title),
        const SizedBox(
          height: 15,
        ),
        SizedBox(
          height: 120,
          width: MediaQuery.of(context).size.width,
          child: ListView.builder(
            itemBuilder: (context, index) => Row(
              children: [
                Image.asset(
                  imageName,
                  height: 120,
                  width: 100,
                ),
                const SizedBox(
                  width: 10,
                ),
              ],
            ),
            itemCount: 10,
            scrollDirection: Axis.horizontal,
          ),
        ),
      ],
    );
  }
}
