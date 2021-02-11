import 'package:flutter/material.dart';

class SectionTitle extends StatelessWidget {
  final String title;

  const SectionTitle({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.transparent,
        child: Row(
      children: [
        Expanded(
            child: Text(
          title,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
        )),
        RaisedButton(
          elevation: 0,
          padding: EdgeInsets.all(0),
          onPressed: () {},
          color: Colors.transparent,
          textColor: Theme.of(context).primaryColor,
          child: Row(
            children: <Widget>[
              Text('View all'),
              Icon(Icons.keyboard_arrow_right)
            ],
          ),
        ),
      ],
    ));
  }
}
