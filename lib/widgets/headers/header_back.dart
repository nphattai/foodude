import 'package:flutter/material.dart';

class HeaderBack extends StatelessWidget {
  final String title;
  final IconButton option;

  const HeaderBack({Key key, this.title, this.option}) : super(key: key);

  @override
  build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: Icon(Icons.arrow_back_ios),
              onPressed: () => Navigator.pop(context),
            ),
            Text(
              title != null ? title : '',
            ),
            option != null
                ? option
                : IconButton(
                    icon: Icon(null),
                    onPressed: () {},
                  )
          ],
        ));
  }
}
