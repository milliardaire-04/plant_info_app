import 'package:flutter/material.dart';
import 'package:plant_info/constants.dart';
import 'package:url_launcher/url_launcher.dart';
import 'big_text_button.dart';
import 'clickable_btn.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({
    Key? key, required this.url,
  }) : super(key: key);
  
  final String url;

  void _launchURL() async =>
    await canLaunch(url) ? await launch(url) : print("Link Not Found") ;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
            offset: Offset(0, 30),
            blurRadius: 50,
            color: kPrimaryColor.withOpacity(0.23))
      ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ClickableBtn(),
          BigTextButton(press: _launchURL,)
        ],
      ),
    );
  }
}