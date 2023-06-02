import 'package:flutter/material.dart';
import '../components/profile_list.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          child: Image.asset(
                            'assets/images/logout.png',
                          ),
                        ),
                        const Text(
                          'Log Out',
                          style: TextStyle(color: Colors.black, fontSize: 16),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          child: Image.asset(
                            'assets/images/coin.png',
                          ),
                        ),
                        const Text(
                          '1500 pt',
                          style: TextStyle(color: Colors.black, fontSize: 16),
                        )
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 26,
                ),
                CircleAvatar(
                  radius: 110,
                  backgroundColor: Colors.white,
                  child: Image.asset('assets/images/profile.png'),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Sofia Jousif',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 6,
                ),
                const Text(
                  'Cairo, Nasr City. 35 B',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                const ProfileList(
                  title: 'Favourites',
                  imageName: 'assets/images/macaron.png',
                ),
                const SizedBox(
                  height: 25,
                ),
                const ProfileList(
                  title: 'Rewards',
                  imageName: 'assets/images/hearts.png',
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
