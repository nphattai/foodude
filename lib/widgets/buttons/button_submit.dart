import 'package:flutter/material.dart';
import 'package:foodude/themes/app_colors.dart';

class ButtonSubmit extends StatelessWidget {
  final String title;
  final Widget icon;
  final Color background;
  final Function onPress;

  const ButtonSubmit(
      {Key key,
      @required this.title,
      this.icon,
      this.background,
      @required this.onPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      padding: const EdgeInsets.all(0),
      onPressed: onPress,
      child: Container(
        height: 50,
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.only(bottom: 20),
        decoration: BoxDecoration(
            color: background != null ? background : AppColors.primary,
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 30,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(5)),
              ),
              child: icon != null
                  ? icon
                  : SizedBox(
                      width: 30,
                    ),
            ),
            Text(
              title,
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(
              width: 30,
            )
          ],
        ),
      ),
    );
  }
}
