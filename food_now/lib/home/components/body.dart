import 'package:flutter/material.dart';
import 'package:food_now/home/components/card_item.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(9.0),
      child: ListView(
        children: [
          // Categories section
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
          // Food special section
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
          // Drinks section
          Row(
            children: [
              Expanded(
                  child: Text(
                    'Drinks',
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
                    title: 'Cola',
                    price: '200',
                    imageURL:
                    'https://www.mcdonalds.eg/Cms_Data/Contents/En/Media/images/Menu/large-Image/Coke.png',
                    discount: '2',
                    favourite: true
                ),
                CardItem(
                    title: 'Pepsi',
                    price: '500',
                    imageURL:
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTQPJuhvo1InQPcUo1xMHC8i9zIy8reHk4DJw&usqp=CAU',
                    discount: '2',
                    favourite: false
                ),
                CardItem(
                    title: 'Lemon Juice',
                    price: '2000',
                    imageURL:
                    'https://homepuff.com/wp-content/uploads/2019/04/lemon-juice.jpg',
                    discount: '4',
                    favourite: false
                ),
              ],
            ),
          ),
          // Snacks section
          Row(
            children: [
              Expanded(
                  child: Text(
                    'Snacks',
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
                    title: 'Samosa',
                    price: '300',
                    imageURL:
                    'https://www.harkoichef.com/wp-content/uploads/2019/06/samos.png',
                    discount: '4',
                    favourite: false
                ),
                CardItem(
                    title: 'Chips',
                    price: '50000',
                    imageURL:
                    'https://fishandcheapsfood.files.wordpress.com/2018/09/fish-and-cheap-3.jpg?w=376&h=245',
                    discount: '3',
                    favourite: true
                ),
                CardItem(
                    title: 'Tea',
                    price: '100',
                    imageURL:
                    'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/tea-royalty-free-image-1590530043.jpg?crop=1.00xw:0.752xh;0,0.118xh&resize=1200:*',
                    discount: '4',
                    favourite: true
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
