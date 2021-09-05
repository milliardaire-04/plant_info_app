import 'package:flutter/material.dart';
import 'package:plant_info/screens/home/components/plant_card.dart';
import 'package:plant_info/models/data.dart';

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Favorite Plants"),
        centerTitle: true,
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          childAspectRatio: MediaQuery.of(context).size.width /
              (MediaQuery.of(context).size.height),
        ),
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          return PlantCard(
            image: plants[index].image,
            title: plants[index].title,
            country: plants[index].country,
            price: plants[index].price,
            press: () {},
          );
        },
        itemCount: plants.length,
      ),
    );
  }
}
