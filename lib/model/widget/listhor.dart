import 'package:flutter/material.dart';


class ListCostomHor extends StatelessWidget {
  const ListCostomHor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  ListView(
      scrollDirection: Axis.horizontal,
      children: [
        ListV(name:'deodorant',desc :'aaa'),
        ListV(name:'inspired-by-creed',desc :'sssss'),
        ListV(name:'inspired-by-givenchy', desc :'ffff'),
        ListV(name:'inspired-by-givenchy',desc :'ddddf'),
        ListV(name:'inspired-by-givenchy',desc :'gggg'),
      ],

    );
  }
}
class ListV extends StatelessWidget {
  String? name;
  String? desc;
   ListV({Key? key, required this.name, required this.desc}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          Container(
            height: 100,
            width: 100,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image(image: AssetImage('images/top_menu/$name.jpeg'),
              fit: BoxFit.cover,),
            ),
          ),
          Text('$desc') ,
        ],
      ),
    );
  }
}
