import 'package:flutter/material.dart';
import 'package:foodude/themes/app_text_styles.dart';

class ButtonCard extends StatelessWidget {
  final Function onPress;
  final Widget icon;
  final String title;
  final TextStyle titleStyle;
  final bool isVisibleFooter;

  const ButtonCard(
      {Key key,
      @required this.onPress,
      this.icon,
      @required this.title,
      this.titleStyle,
      this.isVisibleFooter = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Color(0xff707070), width: 0.1),
        ),
        child: Row(
          children: [
            Padding(padding: const EdgeInsets.only(right: 15), child: icon),
            Expanded(
              child: Text(
                title,
                style: AppTextStyle.bodyText1.merge(
                    TextStyle(color: Colors.black).merge(this.titleStyle)),
              ),
              flex: 1,
            ),
            isVisibleFooter
                ? Image.asset(
                    'assets/images/arrow-right.png',
                  )
                : SizedBox()
          ],
        ),
      ),
    );
  }
}
