import 'package:flutter/material.dart';

class CardItem extends StatelessWidget {
  final String title;
  final String price;
  final String imageURL;

  const CardItem({
    Key key,
    this.title,
    this.price,
    this.imageURL,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // This size provide you the total height and width of the screen
    return Container(
      margin: EdgeInsets.only(left: 5, right: 5, top: 20, bottom: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 4),
            blurRadius: 20,
            color: Color(0xFFB0CCE1).withOpacity(0.32),
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          child: Padding(
            padding: const EdgeInsets.only(top: 0, bottom: 10),
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.network(
                            '$imageURL',
                            fit: BoxFit.cover,
                            height: 110.0,
                            width: 150.0,
                          ),
                        )),
                    Positioned(
                      top: 5,
                      right: 5,
                      //give the values according to your requirement
                      child: Icon(
                        Icons.favorite,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                    Positioned(
                      top: 5,
                      left: 5,
                      //give the values according to your requirement
                      child: Text(
                        '-10%',
                        style: TextStyle(
                            color: Colors.white, backgroundColor: Colors.blue),
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.only(top: 10),
                  child: Column(
                    children: [
                      Text(title),
                      Text(
                        price + ' RWF',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
