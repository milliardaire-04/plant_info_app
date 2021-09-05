import 'package:flutter/material.dart';
import 'package:plant_info/constants.dart';
import 'package:plant_info/models/plants.dart';

class InfoSection extends StatelessWidget {
  const InfoSection({
    Key? key,
    required this.info,
  }) : super(key: key);

  final Plant info;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Column(
        children: [
          Text(
            info.title,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 28,
          ),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(text: "Description:\n\n", style: TextStyle(color: Colors.black, fontSize: 26)),
                TextSpan(text: "This Plant can grows to 12 feet long and raise upto 100 sqft. This is a really important plant in our day to day life. This plant takes only 18 days to get it's full hieght. There are two ways of reproduction for this plant. We need to plant this tree more to save our enviroment. So this plant plays a very vital role in our life.",
                style: TextStyle(color: Colors.black, fontSize: 20, wordSpacing: 5)
                ),
              ]
            ),
          ),
        ],
      ),
    );
  }
}
