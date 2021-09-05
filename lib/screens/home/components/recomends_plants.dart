import 'package:flutter/material.dart';
import 'package:plant_info/models/data.dart';
import 'package:plant_info/screens/details/detail_screen.dart';

import 'plant_card.dart';

class RecomendsPlants extends StatelessWidget {
  const RecomendsPlants({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: plants.map((e) => PlantCard(image: e.image, title: e.title, country: e.country, price: e.price, press: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> DetailScreen(info: e)));
        },)).toList(),
      ),
    );
  }
}
