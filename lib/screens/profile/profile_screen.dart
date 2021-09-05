import 'package:flutter/material.dart';
import 'package:plant_info/screens/profile/screens/favorites/favorites_screen.dart';
import 'components/profile_pic_with_name.dart';
import 'components/text_btn_with_icon.dart';
import 'screens/developer/developer_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top:40),
          child: Column(
            children: [
              ProfilePicWithName(
                  img: "assets/images/user.png", name: "User Name"),
              TextBtnWithIcon(
                  text: "Update Profile", ico: Icons.manage_accounts, press: () {}),
              TextBtnWithIcon(
                  text: "My Favorites", ico: Icons.format_list_bulleted, press: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> FavoritesScreen()));
                  }),
              TextBtnWithIcon(
                  text: "App Settings", ico: Icons.settings, press: () {}),
              TextBtnWithIcon(text: "FAQ", ico: Icons.quiz, press: () {}),
              TextBtnWithIcon(
                  text: "About Developer",
                  ico: Icons.info,
                  press: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => DeveloperScreen()));
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
