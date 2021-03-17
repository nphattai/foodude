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
    final Widget header = icon != null
        ? Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(5)),
            ),
            child: icon)
        : SizedBox(
            width: 30,
            height: 30,
          );

    return ElevatedButton(
      onPressed: onPress,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(
            background != null ? background : AppColors.primary),
        padding: MaterialStateProperty.all(
          EdgeInsets.symmetric(vertical: 0, horizontal: 0),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            header,
            Text(title,
                style: Theme.of(context)
                    .accentTextTheme
                    .bodyText2
                    .apply(color: AppColors.neutral_5)),
            SizedBox(
              width: 30,
            )
          ],
        ),
      ),
    );
  }
}
