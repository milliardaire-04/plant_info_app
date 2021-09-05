import 'package:flutter/material.dart';
import 'package:plant_info/constants.dart';

class TextBtnWithIcon extends StatelessWidget {
  const TextBtnWithIcon({
    Key? key, required this.text, required this.ico, required this.press,
  }) : super(key: key);
  final String text;
  final IconData ico;
  final VoidCallback press;

    @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextButton(
        style: TextButton.styleFrom(
          primary: kPrimaryColor,
          padding: EdgeInsets.all(20),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          backgroundColor: Color(0xFFF5F6F9),
        ),
        onPressed: press,
        child: Row(
          children: [
            Icon(
              ico,
              color: kPrimaryColor.withOpacity(0.5),
              size: 25,
            ),
            SizedBox(width: 20),
            Expanded(child: Text(text, style:TextStyle(color: Colors.black) ,)),
            Icon(Icons.arrow_forward_ios),
          ],
        ),
      ),
    );
  }
}
