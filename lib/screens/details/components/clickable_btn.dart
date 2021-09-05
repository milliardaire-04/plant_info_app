import 'package:flutter/material.dart';

class ClickableBtn extends StatefulWidget {
  const ClickableBtn({
    Key? key,
  }) : super(key: key);

  @override
  _ClickableBtnState createState() => _ClickableBtnState();
}

class _ClickableBtnState extends State<ClickableBtn> {
  bool _loved = false;
  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          setState(() {
            if (_loved){
              _loved = false;
            }else{
              _loved = true;
            }
          });
        },
        iconSize: 40,
        color: _loved? Colors.red: Colors.grey,
        icon: Icon(
          Icons.favorite,
        ));
  }
}