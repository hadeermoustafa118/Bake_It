import 'package:bakeryorder/presentaion/components/recent_card.dart';
import 'package:flutter/material.dart';

class HomeListCard extends StatelessWidget {
  const HomeListCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 179,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        itemBuilder: (context, index) => const RecentCard(),
        itemCount: 10,
      ),
    );
  }
}
