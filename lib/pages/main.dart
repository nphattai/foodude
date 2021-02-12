import 'package:flutter/material.dart';
import 'package:foodude/pages/orders.dart';
import 'package:foodude/pages/profile.dart';
import 'package:foodude/pages/saved.dart';
import 'package:foodude/pages/home.dart';
import 'package:foodude/themes/app_colors.dart';

import 'package:foodude/utils/bottom_navigation_bar_json.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int indexPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getBody(),
      bottomNavigationBar: getBottomNavigationBar(),
    );
  }

  Widget getBody() {
    return IndexedStack(
      index: indexPage,
      children: [HomePage(), OrdersPage(), SavedPage(), ProfilePage()],
    );
  }

  Widget getBottomNavigationBar() {
    return Container(
      height: 70,
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(width: 1, color: Colors.grey),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: List.generate(icons.length, (index) {
          return FlatButton(
            color: null,
            onPressed: () {
              setState(() {
                indexPage = index;
              });
            },
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: indexPage == index ? AppColors.primary_1 : null,
                borderRadius: BorderRadius.circular(50),
              ),
              child: Row(
                children: [
                  Image.asset(
                    icons[index]['icon'],
                    color: indexPage == index ? AppColors.primary : Colors.grey,
                  ),
                  Padding(padding: const EdgeInsets.only(left: 10)),
                  Text(
                    indexPage == index ? icons[index]['name'] : '',
                    style: TextStyle(
                      color: AppColors.primary,
                    ),
                  ),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}
