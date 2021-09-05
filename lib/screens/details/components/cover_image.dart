import 'package:flutter/material.dart';
import 'package:plant_info/models/plants.dart';

class CoveredImage extends StatelessWidget {
  const CoveredImage({
    Key? key,
    required this.info,
    required this.size,
  }) : super(key: key);

  final Plant info;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      info.image,
      height: size.height * 0.4,
      width: size.width,
      fit: BoxFit.cover,
    );
  }
}
