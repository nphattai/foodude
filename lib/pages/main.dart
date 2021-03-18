import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodude/pages/orders.dart';
import 'package:foodude/pages/profile.dart';
import 'package:foodude/pages/saved.dart';
import 'package:foodude/pages/home.dart';
import 'package:foodude/routes/routes.dart';
import 'package:foodude/themes/app_colors.dart';

class MainPage extends StatefulWidget {
  static final GlobalKey<NavigatorState> homeKey =
      GlobalKey(debugLabel: 'homeNavigatorKey');

  static final GlobalKey<NavigatorState> ordersKey =
      GlobalKey(debugLabel: 'ordersNavigatorKey');

  static final GlobalKey<NavigatorState> profileKey =
      GlobalKey(debugLabel: 'profileNavigatorKey');

  static final GlobalKey<NavigatorState> savedKey =
      GlobalKey(debugLabel: 'savedNavigatorKey');

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  GlobalKey<NavigatorState> get homeKey => MainPage.homeKey;
  GlobalKey<NavigatorState> get profileKey => MainPage.profileKey;
  GlobalKey<NavigatorState> get ordersKey => MainPage.ordersKey;
  GlobalKey<NavigatorState> get savedKey => MainPage.savedKey;

  int oldTab = 0;
  CupertinoTabController _tabController;
  List<Widget> listTab;

  @override
  void initState() {
    super.initState();

    _tabController = CupertinoTabController();

    listTab = [
      CupertinoTabView(
        builder: (BuildContext context) {
          return const HomePage();
        },
        navigatorKey: homeKey,
        onGenerateRoute: Routes.buildRoutes,
      ),
      CupertinoTabView(
        builder: (BuildContext context) {
          return const OrdersPage();
        },
        navigatorKey: ordersKey,
      ),
      CupertinoTabView(
        builder: (BuildContext context) {
          return const SavedPage();
        },
        navigatorKey: savedKey,
      ),
      CupertinoTabView(
        builder: (BuildContext context) {
          return const ProfilePage();
        },
        navigatorKey: profileKey,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CupertinoTabScaffold(
        controller: _tabController,
        tabBuilder: (BuildContext context, int index) {
          return listTab[index];
        },
        tabBar: _buildTabar(),
      ),
    );
  }

  Widget _buildTabar() {
    return CupertinoTabBar(onTap: onTabTap, items: <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: 'Home',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.shop),
        label: 'Orders',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.calendar_today),
        label: 'Saved',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.person),
        label: 'Profile',
      ),
    ]);
  }

  void onTabTap(int index) {
    switch (index) {
      case 0:
        if (index != oldTab) {
          break;
        }
        if (homeKey.currentState.canPop()) {
          homeKey.currentState.pop();
        }
        break;
      case 1:
        if (index != oldTab) {
          break;
        }
        if (ordersKey.currentState.canPop()) {
          ordersKey.currentState.pop();
        }
        break;
      case 2:
        if (index != oldTab) {
          break;
        }
        if (savedKey.currentState.canPop()) {
          savedKey.currentState.pop();
        }
        break;
      case 3:
        if (index != oldTab) {
          break;
        }
        if (profileKey.currentState.canPop()) {
          profileKey.currentState.pop();
        }
        break;
    }
    oldTab = index;
  }
}
