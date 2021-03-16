import 'package:flutter/material.dart';
import 'package:foodude/themes/app_colors.dart';
import 'package:foodude/themes/app_text_styles.dart';
import 'package:foodude/widgets/buttons/button_card.dart';

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
                          style: AppTextStyle.bodyText1,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Text(
                          '(424) 545-1818',
                          style: AppTextStyle.bodyText1,
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
              padding: const EdgeInsets.only(top: 20),
              decoration: BoxDecoration(color: Colors.grey[200]),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ButtonCard(
                    onPress: goMyVoucher,
                    title: 'My Voucher',
                    icon: Image.asset('assets/images/voucher.png'),
                  ),
                  ButtonCard(
                    onPress: goPaymentMethod,
                    title: 'Payment methods',
                    icon: Image.asset('assets/images/payment.png'),
                  ),
                  ButtonCard(
                    onPress: goProfileAndAddress,
                    title: 'Profile & Address',
                    icon: Image.asset('assets/images/profile.png'),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ButtonCard(
                    onPress: goHelpCnter,
                    title: 'Help center',
                    icon: Image.asset('assets/images/support.png'),
                  ),
                  ButtonCard(
                    onPress: goAbout,
                    title: 'About us',
                    icon: Image.asset('assets/images/info.png'),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ButtonCard(
                    onPress: onLogout,
                    title: 'Log Out',
                    titleStyle: TextStyle(color: AppColors.primary),
                    icon: Image.asset('assets/images/log-out.png'),
                    isVisibleFooter: false,
                  ),
                ],
              ),
            ),
            flex: 7,
          )
        ],
      ),
    );
  }

  void openNoti() {}

  void goMyVoucher() {}

  void goPaymentMethod() {}

  void goProfileAndAddress() {}

  void goHelpCnter() {}

  void goAbout() {}

  void onLogout() {}
}
