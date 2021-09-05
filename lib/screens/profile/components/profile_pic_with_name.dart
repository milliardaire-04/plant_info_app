import 'package:flutter/material.dart';
import 'package:plant_info/constants.dart';

class ProfilePicWithName extends StatelessWidget {
  const ProfilePicWithName({
    Key? key, required this.img, required this.name,
  }) : super(key: key);
  final String img, name;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kDefaultPadding *2),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            maxRadius: 70,
            backgroundImage: AssetImage(img),
          ),
          Padding(
            padding: const EdgeInsets.only(left:20.0),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(text: "Name:\n",
                  style: TextStyle(
                    color: Colors.black
                  ),
                  ),
                  TextSpan(text: name,
                  style: TextStyle(
                    color: Colors.blueAccent[200],
                    fontSize: 28
                  ),
                  )
                ]
              ),
            ),
          ),
        ],
      ),
    );
  }
}
