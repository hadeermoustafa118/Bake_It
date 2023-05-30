import 'package:flutter/material.dart';
class HomeBanner extends StatelessWidget {
  const HomeBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 200,
          width: MediaQuery.of(context).size.width,
          child: Image.asset(
            'assets/images/banner.png',
            fit: BoxFit.fill,
          ),
        ),
        const Positioned(
          top: 18,
          left: 10,
          child: Text(
            'Your Score',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 26,
                color: Colors.white),
          ),
        ),
        const Positioned(
          bottom: 72,
          right: 120,
          child: Text(
            '1500',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 52,
                color: Colors.white),
          ),
        ),
        const Positioned(
          right: 10,
          bottom: 18,
          child: Text(
            'Use Them Now!',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: Colors.white),
          ),
        ),
      ],
    );
  }
}
