import 'package:flutter/material.dart';
import 'package:hello_world/features/user_profile/screen/EditUserProfile.dart';

class UserProfileScreen extends StatefulWidget {
  const UserProfileScreen({super.key});

  @override
  _UserProfileScreenState createState() => _UserProfileScreenState();
}

class _UserProfileScreenState extends State<UserProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: const Text("Profile"),
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Center(
              child: Column(
                children: [
                  InkWell(
                    splashColor: Colors.transparent,
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const EditUserProfileScreen(),));
                  },
                  child: const CircleAvatar(
                    radius: 60,
                    backgroundImage: AssetImage("assets/images/profile.jpeg"),
                  ),
                )
              ],
            ),
          )),
    ));
  }
}
