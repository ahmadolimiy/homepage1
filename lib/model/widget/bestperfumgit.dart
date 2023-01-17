import 'package:flutter/material.dart';

class BestFoodWidget extends StatefulWidget {
  @override
  _BestFoodWidgetState createState() => _BestFoodWidgetState();
}

class _BestFoodWidgetState extends State<BestFoodWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: double.infinity,
      child: Column(
        children: <Widget>[
          BestFoodTitle(),
          Expanded(
            child: BestFoodList(),
          )
        ],
      ),
    );
  }
}

class BestFoodTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            "Best Perfums",
            style: TextStyle(
                fontSize: 20,
                color: Color(0xFF3a3a3b),
                fontWeight: FontWeight.w300),
          ),
        ],
      ),
    );
  }
}

class BestFoodTiles extends StatelessWidget {
  String name;
  String imageUrl;
  String rating;
  String numberOfRating;
  String price;
  String slug;

  BestFoodTiles(
      { Key? key,
        required this.name,
        required this.imageUrl,
        required this.rating,
        required this.numberOfRating,
        required this.price,
        required this.slug})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.only(left: 10, right: 5, top: 5, bottom: 5),
        child: Card(

          //what it is doing ?
          semanticContainer: true,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Image.asset(
            'images/top_menu/' + imageUrl + ".jpeg",
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          elevation: 1,
          margin: EdgeInsets.all(5),
        ),
      ),
    );
  }
}

class BestFoodList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        BestFoodTiles(
            name: "deodorant",
            imageUrl: "deodorant",
            rating: '4.9',
            numberOfRating: '200',
            price: '15.06',
            slug: "fried_egg"),
        BestFoodTiles(
            name: "inspired-by-baccarat-rouge",
            imageUrl: "inspired-by-baccarat-rouge",
            rating: "4.9",
            numberOfRating: "100",
            price: "17.03",
            slug: ""),
        BestFoodTiles(
            name: "inspired-by-creed",
            imageUrl: "inspired-by-creed",
            rating: "4.0",
            numberOfRating: "50",
            price: "11.00",
            slug: ""),
        BestFoodTiles(
            name: "New mixed salad",
            imageUrl: "ic_best_food_5",
            rating: "4.00",
            numberOfRating: "100",
            price: "11.10",
            slug: ""),
        BestFoodTiles(
            name: "Red meat with salad",
            imageUrl: "ic_best_food_1",
            rating: "4.6",
            numberOfRating: "150",
            price: "12.00",
            slug: ""),
        BestFoodTiles(
            name: "New mixed salad",
            imageUrl: "ic_best_food_2",
            rating: "4.00",
            numberOfRating: "100",
            price: "11.10",
            slug: ""),
        BestFoodTiles(
            name: "Potato with meat fry",
            imageUrl: "ic_best_food_3",
            rating: "4.2",
            numberOfRating: "70",
            price: "23.0",
            slug: ""),
        BestFoodTiles(
            name: "Fried Egg",
            imageUrl: "ic_best_food_4",
            rating: '4.9',
            numberOfRating: '200',
            price: '15.06',
            slug: "fried_egg"),
        BestFoodTiles(
            name: "Red meat with salad",
            imageUrl: "ic_best_food_5",
            rating: "4.6",
            numberOfRating: "150",
            price: "12.00",
            slug: ""),
        BestFoodTiles(
            name: "Red meat with salad",
            imageUrl: "ic_best_food_6",
            rating: "4.6",
            numberOfRating: "150",
            price: "12.00",
            slug: ""),
        BestFoodTiles(
            name: "Red meat with salad",
            imageUrl: "ic_best_food_7",
            rating: "4.6",
            numberOfRating: "150",
            price: "12.00",
            slug: ""),
      ],
    );
  }
}