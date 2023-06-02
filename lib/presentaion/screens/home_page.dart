import 'package:bakeryorder/presentaion/components/home_banner.dart';
import 'package:bakeryorder/presentaion/components/home_list_view.dart';
import 'package:bakeryorder/presentaion/components/home_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../components/home_list_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
            statusBarIconBrightness: Brightness.dark),
        backgroundColor: Colors.white,
        elevation: 0.0,
        actions: [
          CircleAvatar(
            radius: 35.0,
            child: Image.asset('assets/images/profile.png'),
          ),
          const SizedBox(
            width: 20.0,
          ),
        ],
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 28.0, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HomeBanner(),
            SizedBox(
              height: 22,
            ),
            Text(
              'Categories',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 18,
            ),
            HomeListView(),
            SizedBox(
              height: 20,
            ),
            HomeRow(
              title: 'Recently Added',
            ),
            SizedBox(
              height: 18,
            ),
            SingleChildScrollView(child: HomeListCard()),
          ],
        ),
      ),
    );
  }
}
