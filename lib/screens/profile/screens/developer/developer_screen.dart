import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class DeveloperScreen extends StatelessWidget {
  const DeveloperScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const colorizeColors = [
      Colors.purple,
      Colors.blue,
      Colors.yellow,
      Colors.red,
    ];
    const colorizeTextStyle = TextStyle(
      fontSize: 30.0,
      fontFamily: 'Horizon',
    );

    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.4,
            width: MediaQuery.of(context).size.width,
            child: Image.asset(
              "assets/images/developer.png",
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: DefaultTextStyle(
              style: const TextStyle(
                fontSize: 25.0,
                fontFamily: 'Agne',
                color: Colors.black,
              ),
              child: AnimatedTextKit(
                animatedTexts: [
                  TypewriterAnimatedText('Software Developer', speed: Duration(milliseconds: 60)),
                  TypewriterAnimatedText('Full Stack Developer', speed: Duration(milliseconds: 60)),
                  TypewriterAnimatedText('Android Developer', speed: Duration(milliseconds: 60)),

                ],
                
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10, top: 10),
            child: RichText(
              textAlign: TextAlign.start,
              text: TextSpan(children: [
                TextSpan(
                    text: "Name\n",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    )),
              ]),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 20),
            width: 300.0,
            child: AnimatedTextKit(
              animatedTexts: [
                ColorizeAnimatedText(
                  'Hasib Hossain Abir',
                  textStyle: colorizeTextStyle,
                  colors: colorizeColors,
                ),
              ],
              isRepeatingAnimation: true,
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              "Follow me on",
              style: TextStyle(
                  fontSize: 24,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                  onPressed: () {
                    launch("tel: +8801686142504");
                  },
                  icon: Icon(
                    Icons.call,
                    color: Colors.green,
                    size: 45,
                  )),
              SizedBox(
                width: 20,
              ),
              IconButton(
                  onPressed: () {
                    launch(
                      "https://www.facebook.com/abir.milliardaire/",
                    );
                  },
                  icon: Icon(
                    Icons.facebook,
                    color: Colors.blue,
                    size: 45,
                  )),
              SizedBox(
                width: 20,
              ),
              IconButton(
                  onPressed: () {
                    launch(
                        "mailto:abir_04@outlook.com?subject=I want to contact (plant app)");
                  },
                  icon: Icon(
                    Icons.mail,
                    color: Colors.blue[200],
                    size: 45,
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
