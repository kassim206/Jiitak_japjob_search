import 'package:flutter/material.dart';
import 'package:jiitak_japanese/View/screens/homepage/home_screen.dart';
import 'package:jiitak_japanese/core/pallets.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

import 'homepage/editestore.dart';
import 'homepage/stampcard.dart';

class bottomNavbar extends StatefulWidget {
  @override
  State<bottomNavbar> createState() => _bottomNavbarState();
}

class _bottomNavbarState extends State<bottomNavbar> {
  late PersistentTabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = PersistentTabController();
  }

  List<Widget> _buildScreens() {
    return [
      HomeScreen(),
      StampCard(),
      EditStorProfile(),
      Container(color: Colors.white),
      Container(color: Colors.white),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      _buildNavBarItem(Icons.search, "さがす", pallete.orngeColor, Colors.grey),
      _buildNavBarItem(Icons.business_center_outlined, "お仕事",
          pallete.orngeColor, Colors.grey),
      _buildNavBarItem(
          Icons.settings_overscan, "打刻する", pallete.orngeColor, Colors.grey),
      _buildNavBarItem(
          Icons.chat_outlined, "さがす", pallete.orngeColor, Colors.grey),
      _buildNavBarItem(Icons.person, "マイページ", pallete.orngeColor, Colors.grey),
    ];
  }

  PersistentBottomNavBarItem _buildNavBarItem(
    IconData icon,
    String title,
    Color activeColor,
    Color inactiveColor,
  ) {
    return PersistentBottomNavBarItem(
      icon: Icon(icon),
      title: title,
      activeColorPrimary: activeColor,
      inactiveColorPrimary: inactiveColor,
    );
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      confineInSafeArea: true,
      backgroundColor: Colors.white,
      handleAndroidBackButtonPress: true,
      resizeToAvoidBottomInset: true,
      stateManagement: true,
      hideNavigationBarWhenKeyboardShows: true,
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(10.0),
        colorBehindNavBar: Colors.white,
      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: ItemAnimationProperties(
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: ScreenTransitionAnimation(
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle: NavBarStyle.style15,
    );
  }
}
