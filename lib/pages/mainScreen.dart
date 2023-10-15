// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:panne_detector/pages/profile.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';

import '../constantes/constantes.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final PersistentTabController _controller =
      PersistentTabController(initialIndex: 0);
  List<Widget> _buildScreens() {
    return [
      const Profile(),
      const Profile(),
      const Profile(),
      const Profile(),
      const Profile()
    ];
  }

  // List Of NAV Bar Items
  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        inactiveIcon: SvgPicture.asset(
          "assets/images/Dashboard.svg",
          colorFilter: const ColorFilter.mode(unselectedIcon, BlendMode.srcIn),
          height: 25,
          width: 25,
        ),
        icon: SvgPicture.asset(
          "assets/images/Dashboard.svg",
          colorFilter: const ColorFilter.mode(mainColor, BlendMode.srcIn),
          height: 25,
          width: 25,
        ),
      ),
      PersistentBottomNavBarItem(
        inactiveIcon: SvgPicture.asset(
          "assets/images/salary.svg",
          colorFilter: const ColorFilter.mode(unselectedIcon, BlendMode.srcIn),
          height: 25,
          width: 25,
        ),
        icon: SvgPicture.asset(
          "assets/images/salary.svg",
          colorFilter: const ColorFilter.mode(mainColor, BlendMode.srcIn),
          height: 25,
          width: 25,
        ),
      ),
      PersistentBottomNavBarItem(
        icon: Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: mainColor.withOpacity(0.5),
              width: 2,
            ),
          ),
          child: CircleAvatar(
            backgroundColor: mainColor,
            child: SvgPicture.asset(
              "assets/images/call_Session.svg",
              colorFilter:
                  const ColorFilter.mode(Colors.white, BlendMode.srcIn),
            ),
          ),
        ),
      ),
      PersistentBottomNavBarItem(
        inactiveIcon: SvgPicture.asset(
          "assets/images/score.svg",
          colorFilter: const ColorFilter.mode(unselectedIcon, BlendMode.srcIn),
          height: 25,
          width: 25,
        ),
        icon: SvgPicture.asset(
          "assets/images/score.svg",
          colorFilter: const ColorFilter.mode(mainColor, BlendMode.srcIn),
          height: 25,
          width: 25,
        ),
      ),
      PersistentBottomNavBarItem(
        inactiveIcon: SvgPicture.asset(
          "assets/images/tracking.svg",
          colorFilter: const ColorFilter.mode(unselectedIcon, BlendMode.srcIn),
          height: 25,
          width: 25,
        ),
        icon: SvgPicture.asset(
          "assets/images/tracking.svg",
          colorFilter: const ColorFilter.mode(mainColor, BlendMode.srcIn),
          height: 25,
          width: 25,
        ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: PersistentTabView(context,
          navBarHeight: 70,
          controller: _controller,
          screens: _buildScreens(),
          items: _navBarsItems(),
          popAllScreensOnTapAnyTabs: false,
          confineInSafeArea: true,
          handleAndroidBackButtonPress: true,
          resizeToAvoidBottomInset: true,
          stateManagement: true,
          hideNavigationBarWhenKeyboardShows: true,
          decoration: const NavBarDecoration(
            colorBehindNavBar: backGround,
          ),
          popAllScreensOnTapOfSelectedTab: true,
          popActionScreens: PopActionScreensType.all,
          itemAnimationProperties: const ItemAnimationProperties(
            duration: Duration(milliseconds: 100),
            curve: Curves.ease,
          ),
          screenTransitionAnimation: const ScreenTransitionAnimation(
            animateTabTransition: true,
            curve: Curves.ease,
            duration: Duration(milliseconds: 200),
          ),
          navBarStyle: NavBarStyle.style6),
    );
  }
}
