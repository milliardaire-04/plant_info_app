import 'package:flutter/material.dart';
import 'package:plant_info/models/plants.dart';
import 'components/bottom_bar.dart';
import 'components/cover_image.dart';
import 'components/info_section.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key, required this.info}) : super(key: key);
  final Plant info;
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(info.title),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CoveredImage(info: info, size: size),
            SizedBox(height: 20),
            InfoSection(info: info),
          ],
        ),
      ),
      bottomNavigationBar: BottomBar(url: info.url,),
    );
  }
}








