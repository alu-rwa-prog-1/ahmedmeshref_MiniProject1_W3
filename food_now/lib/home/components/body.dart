import 'package:flutter/material.dart';
import 'package:food_now/home/components/card_item.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(9.0),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                  child: Text(
                'All Categories',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              )),
              RaisedButton(
                elevation: 0,
                padding: EdgeInsets.all(0),
                onPressed: () {},
                color: Colors.white30,
                textColor: Theme.of(context).primaryColor,
                child: Row(
                  children: <Widget>[
                    Text('View all'),
                    Icon(Icons.keyboard_arrow_right)
                  ],
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                  child: Text(
                'Today Special',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              )),
              RaisedButton(
                elevation: 0,
                padding: EdgeInsets.all(0),
                onPressed: () {},
                color: Colors.white30,
                textColor: Theme.of(context).primaryColor,
                child: Row(
                  children: <Widget>[
                    Text('View all'),
                    Icon(Icons.keyboard_arrow_right)
                  ],
                ),
              ),
            ],
          ),
          Container(
            height: 215,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                CardItem(
                    title: 'Burger',
                    price: '2000',
                    imageURL:
                        'https://top10cairo.com/wp-content/uploads/2015/12/best-burger-restaurant-places-in-cairo-696x365.jpg',
                    discount: '10',
                    favourite: true
                ),
                CardItem(
                    title: 'Pizza',
                    price: '12000',
                    imageURL:
                    'https://www.delonghi.com/Global/recipes/multifry/pizza_fresca.jpg',
                    discount: '2',
                    favourite: false
                ),
                CardItem(
                    title: 'Steak',
                    price: '3220',
                    imageURL:
                    'https://i2.wp.com/www.foodrepublic.com/wp-content/uploads/2012/05/testkitchen_argentinesteak.jpg?resize=1280%2C%20560&ssl=1',
                    discount: '20',
                    favourite: false
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
