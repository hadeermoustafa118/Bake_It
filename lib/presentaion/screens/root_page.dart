import 'package:bakeryorder/presentaion/screens/cart_screen.dart';
import 'package:bakeryorder/presentaion/screens/home_page.dart';
import 'package:bakeryorder/presentaion/screens/profile_screen.dart';
import 'package:bakeryorder/presentaion/screens/search_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class RootPage extends StatelessWidget {
  const RootPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> buildScreens() {
      return const [
        HomePage(),
        CartScreen(),
        SearchScreen(),
        ProfileScreen()
      ];
    }
    List<PersistentBottomNavBarItem> navBarsItems() {
      return [
        PersistentBottomNavBarItem(
          icon: const Icon(CupertinoIcons.home),
          title: ("Home"),
          activeColorPrimary: Colors.black,
          inactiveColorPrimary: CupertinoColors.systemGrey,
        ),
        PersistentBottomNavBarItem(
          icon: const Icon(CupertinoIcons.cart),
          title: ("Cart"),
          activeColorPrimary: Colors.black,
          inactiveColorPrimary: CupertinoColors.systemGrey,
        ),
        PersistentBottomNavBarItem(
          icon: const Icon(CupertinoIcons.search),
          title: ("Search"),
          activeColorPrimary: Colors.black,
          inactiveColorPrimary: CupertinoColors.systemGrey,
        ),
        PersistentBottomNavBarItem(
          icon: const Icon(CupertinoIcons.profile_circled),
          title: ("Profile"),
          activeColorPrimary: Colors.black,
          inactiveColorPrimary: CupertinoColors.systemGrey,
        ),
      ];
    }
    PersistentTabController controller = PersistentTabController();
    return PersistentTabView(
      context,
      controller: controller,
      screens: buildScreens(),
      items: navBarsItems(),
      confineInSafeArea: true,
      backgroundColor: Colors.white, // Default is Colors.white.
      handleAndroidBackButtonPress: true, // Default is true.
      resizeToAvoidBottomInset: true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
      stateManagement: true, // Default is true.
      hideNavigationBarWhenKeyboardShows: true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(15.0),
        colorBehindNavBar: Colors.white,
      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: const ItemAnimationProperties( // Navigation Bar's items animation properties.
        duration: Duration(milliseconds: 150),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: const ScreenTransitionAnimation( // Screen transition animation on change of selected tab.
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 150),
      ),
      navBarStyle: NavBarStyle.style2, // Choose the nav bar style with this property.
    );
  }
}
