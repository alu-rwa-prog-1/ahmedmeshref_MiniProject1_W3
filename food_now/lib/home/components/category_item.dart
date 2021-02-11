import 'package:flutter/material.dart';

class HomeCategoryItem extends StatelessWidget {
  final String title;
  final IconData iconName;

  const HomeCategoryItem({Key key, this.title, this.iconName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(right: 5),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 5),
                padding: EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 4),
                        blurRadius: 20,
                        color: Color(0xFFB0CCE1).withOpacity(0.32),
                      ),
                    ]),
                child: Icon(
                  iconName,
                  color: Theme.of(context).primaryColor,
                  size: 36,
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(title, style: TextStyle(fontSize: 12)),
                Icon(
                  Icons.keyboard_arrow_right,
                  size: 20,
                )
              ],
            ),
          ],
        )
    );
  }
}
