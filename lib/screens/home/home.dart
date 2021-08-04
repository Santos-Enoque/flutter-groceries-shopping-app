import 'package:cadevo/constants/asset_path.dart';
import 'package:cadevo/models/categories.dart';
import 'package:cadevo/screens/home/widget/custom_choice_chip.dart';
import 'package:cadevo/widgets/custom_text.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nb_utils/nb_utils.dart';

const categories = <CategoryModel>[
  CategoryModel('All', 'id'),
  CategoryModel('fruits', 'id'),
  CategoryModel('vegetables', 'id'),
  CategoryModel('meat', 'id'),
  CategoryModel('grains', 'id'),
];

var selectedCategories = <CategoryModel>[

];

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var _width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          SizedBox(height: 20,),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                CustomText(text: '📍',size: 26,),
                RichText(text: TextSpan(
                    children: [
                      TextSpan(
                          text: 'Delivery address\n',
                          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w300)
                      ),

                      TextSpan(
                          text: 'Ms palya, Bangalore, India',
                          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)
                      )
                    ]
                )),
              ],
            ),
          ),

          Container(
            margin: EdgeInsets.only(top: 24, bottom: 8, left: 16, right: 16),
            padding: EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(.15),
              borderRadius: BorderRadius.circular(8),
            ),
            child: TextField(
              decoration: InputDecoration(
                  icon: Icon(Icons.search),
                  hintText: 'oranges, bread, tomato...',
                  border: InputBorder.none
              ),
            ),
          ),
          Container(
            child: CarouselSlider(
              options: CarouselOptions(height: 160,
              autoPlay: true),
              items: [
                Container(
                    child: Image.asset(banner1)),
                Container(child: Image.asset(banner2)),
              ]
            ),
          ),


      Container(
        height: 40,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: categories.map((category) => CustomChip(
            text: category.name,
            isSelected: categories.indexOf(category) == 0,
            onSelected: (bool value){},
          )).toList(),
        ),
      ),

      GridView.count(shrinkWrap: true,
      padding: EdgeInsets.all(16),
      childAspectRatio: 0.65,
      crossAxisCount: 2,
      physics: ScrollPhysics(),
          children: [
                 ItemCard(),
              ItemCard(),
                ItemCard(),
              ItemCard(),
          ],
      ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.deepOrange,
        child: Icon(Icons.shopping_cart_outlined),
      onPressed: (){},),
      bottomNavigationBar: BottomAppBar(
        color: Colors.black,
        shape: CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(icon: Icon(Icons.home_outlined, color: Colors.white,), onPressed: (){}),
          Container(
            padding: EdgeInsets.only(right: 36),
            child: IconButton(icon: Icon(Icons.event,color: Colors.grey,), onPressed: (){})),
                    Container(
            padding: EdgeInsets.only(left: 36),
            child: IconButton(icon: Icon(Icons.person,color: Colors.grey,), onPressed: (){})),
          IconButton(icon: Icon(Icons.settings_outlined, color: Colors.grey,), onPressed: (){}),


        ],
      ),),
    );
  }
}

class ItemCard extends StatelessWidget {
  const ItemCard({
    Key key,
  }) :  super(key: key);


  @override
  Widget build(BuildContext context) {

    return Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 2),
            color: Colors.black.withOpacity(.1),
            blurRadius: 8
          )
        ]

      ),
      child: Stack(
        children: [
          Column(
            children: [
              Container(
                  padding: EdgeInsets.all(8),
                  child: Image.asset(tomatoImage)),
              RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                      children: [
                        TextSpan(
                            text: 'Tomato\n',
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.black, fontWeight: FontWeight.bold)
                        ),
                        TextSpan(
                            text: '\$2 ',
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.red, fontWeight: FontWeight.bold)
                        ),    TextSpan(
                            text: '/kg',
                            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w300)
                        ),


                      ]
                  )),
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(icon: Icon(Icons.remove_circle_outline_outlined), onPressed: (){}),
                  CustomText(text: '4'),
                  IconButton(icon: Icon(Icons.add_circle_rounded), onPressed: (){}),
                ],
              ),



            ],
          ),

          Container(
            decoration: BoxDecoration(
            color: Colors.red,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(16),
                topLeft: Radius.circular(8),

              )
            ),
            padding: EdgeInsets.all(8),

            child: Icon(Icons.add_shopping_cart_outlined, size: 20, color: Colors.white,))
        ],
      ),
    );
  }
}
