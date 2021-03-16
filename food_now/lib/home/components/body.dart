import 'package:flutter/material.dart';
import 'package:food_now/home/components/card_item.dart';
import 'package:food_now/home/components/category_item.dart';
import 'package:food_now/home/components/section_title.dart';

class Body extends StatelessWidget {
  final double spaceBetweenSections = 7.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 5.0, bottom: 0, left: 9.0, right: 0),
      child: ListView(
        children: [
          // Categories list section
          SectionTitle(title: 'All Categories'),
          Container (
            height: 120,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                HomeCategoryItem(title: 'Take Away', iconName: Icons.food_bank,),
                HomeCategoryItem(title: 'One Plate', iconName: Icons.dialpad_sharp,),
                HomeCategoryItem(title: 'Drinks', iconName: Icons.local_drink_sharp,),
                HomeCategoryItem(title: 'Vegan', iconName: Icons.account_tree,)
              ],
            ),
          ),
          SizedBox(height: spaceBetweenSections,),
          // Food special section
          SectionTitle(title: 'Today Special'),
          Container(
            height: 200,
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
          SizedBox(height: spaceBetweenSections,),
          // Drinks section
          SectionTitle(title: 'Drinks'),
          Container(
            height: 200,
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
          SizedBox(height: spaceBetweenSections,),
          // Snacks section
          SectionTitle(title: 'Sneaks'),
          Container(
            height: 200,
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
          SizedBox(height: spaceBetweenSections,),

        ],
      ),
    );
  }
}
