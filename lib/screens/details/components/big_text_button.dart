import 'package:flutter/material.dart';
import 'package:plant_info/constants.dart';

class BigTextButton extends StatelessWidget {
  const BigTextButton({
    Key? key, required this.press,
  }) : super(key: key);
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: press,
      child: Text(
        "More Info",
        style: TextStyle(color: Colors.white, fontSize: 24),
      ),
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(kPrimaryColor),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(22)),
          ),
          padding: MaterialStateProperty.all<EdgeInsets>(
              EdgeInsets.symmetric(
                  horizontal: kDefaultPadding * 2,
                  vertical: kDefaultPadding * 0.5))),
    );
  }
}