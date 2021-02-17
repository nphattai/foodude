import 'package:flutter/material.dart';
import 'package:foodude/themes/styles_text.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Flexible(
            child: Stack(
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 30),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(color: Colors.white),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 45,
                        backgroundImage: NetworkImage(
                          'https://picsum.photos/250?image=9',
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Text(
                          'Nguyen Phat Tai',
                          style: AppTextStyles.body,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Text(
                          '(424) 545-1818',
                          style: AppTextStyles.body,
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  child: FlatButton(
                    onPressed: openNoti,
                    child: Image.asset('assets/images/noti.png'),
                  ),
                  right: 0,
                  top: 50,
                )
              ],
            ),
            flex: 3,
          ),
          Flexible(
            child: Container(
              decoration: BoxDecoration(color: Colors.red),
              child: Column(
                children: [],
              ),
            ),
            flex: 7,
          )
        ],
      ),
    );
  }

  void openNoti() {}
}
