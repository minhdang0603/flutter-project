import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {

  bool value = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text("Profile", style: TextStyle(
            fontWeight: FontWeight.w500
          ),),
        )
      ),
      body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 50),
            child: Column(
              children: [
                const Center(
                  child: CircleAvatar(
                    radius: 55,
                    backgroundImage: AssetImage("assets/images/profile.jpeg"),
                  ),
                ),
                const SizedBox(height: 10,),
                Text("Ta Minh Dang", style: Theme.of(context).textTheme.headlineMedium,),
                const SizedBox(height: 3,),
                Text("dangtmhe181967@gfpt.edu.vn", style: Theme.of(context).textTheme.bodySmall,),
                const SizedBox(height: 10,),
                ListTile(
                  leading: const Icon(Icons.account_circle, color: Colors.blueGrey, size: 40,),
                  title: Text("My Account", style: TextStyle(
                      fontSize: 13,
                      color: Colors.black.withOpacity(0.6)
                  ),
                  ),
                  subtitle: Text("Change to my account details", style: TextStyle(
                      fontSize: 10,
                      color: Colors.black.withOpacity(0.6)
                  ),
                  ),
                  trailing: Container(
                    width: 85,
                    height: 45,
                    child: const Row(
                      children: [
                        Icon(Icons.warning, color: Colors.teal, size: 20, ),
                        SizedBox(width: 30,),
                        Icon(Icons.arrow_forward_ios_sharp, color: Colors.blueGrey, size: 20,),
                      ],
                    )
                  ),
                ),
                const SizedBox(height: 5,),
                ListTile(
                  leading: const Icon(Icons.account_circle, color: Colors.blueGrey, size: 40,),
                  title: Text("Saved Contact", style: TextStyle(
                      fontSize: 13,
                      color: Colors.black.withOpacity(0.6)
                  ),
                  ),
                  subtitle: Text("Manage your saved contact", style: TextStyle(
                      fontSize: 10,
                      color: Colors.black.withOpacity(0.6)
                  ),
                  ),
                  trailing: Container(
                    width: 45,
                    height: 45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: const Icon(Icons.arrow_forward_ios_sharp, color: Colors.blueGrey, size: 20,),
                  ),
                ),
                const SizedBox(height: 5,),
                ListTile(
                  leading: const Icon(Icons.lock_outline, color: Colors.blueGrey, size: 40,),
                  title: Text("Face ID/Touch ID", style: TextStyle(
                      fontSize: 13,
                      color: Colors.black.withOpacity(0.6)
                  ),
                  ),
                  subtitle: Text("Manage your device security", style: TextStyle(
                      fontSize: 10,
                      color: Colors.black.withOpacity(0.6)
                  ),
                  ),
                  trailing: Container(
                    width: 75,
                    height: 45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Switch(value: value, onChanged: (value){}),
                  ),
                ),
                const SizedBox(height: 5,),
                ListTile(
                  leading: const Icon(Icons.verified_user_outlined, color: Colors.blueGrey, size: 40,),
                  title: Text("Two-Factor Authentication", style: TextStyle(
                      fontSize: 13,
                      color: Colors.black.withOpacity(0.6)
                  ),
                  ),
                  subtitle: Text("Further secure your account for safety", style: TextStyle(
                      fontSize: 10,
                      color: Colors.black.withOpacity(0.6)
                  ),
                  ),
                  trailing: Container(
                    width: 45,
                    height: 45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: const Icon(Icons.arrow_forward_ios_sharp, color: Colors.blueGrey, size: 20,),
                  ),
                ),
                const SizedBox(height: 5,),
                ListTile(
                  leading: const Icon(Icons.logout, color: Colors.blueGrey, size: 40,),
                  title: Text("Log out", style: TextStyle(
                      fontSize: 13,
                      color: Colors.black.withOpacity(0.6)
                  ),
                  ),
                  subtitle: Text("Change to my account details", style: TextStyle(
                      fontSize: 10,
                      color: Colors.black.withOpacity(0.6)
                  ),
                  ),
                  trailing: Container(
                    width: 45,
                    height: 45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: const Icon(Icons.arrow_forward_ios_sharp, color: Colors.blueGrey, size: 20,),
                  ),
                ),
                ],
              )
            ),
          ),
      bottomNavigationBar: Container(
            decoration: const BoxDecoration(
              boxShadow: [
                BoxShadow(
                  blurRadius: 20,
                )
              ]
            ),
            child: ClipRRect(
              borderRadius: const BorderRadius.vertical(top: Radius.circular(30)),
              child: BottomNavigationBar(
              backgroundColor: Colors.black,
              showUnselectedLabels: true,
              showSelectedLabels: true,
              unselectedItemColor: Colors.black,
              selectedItemColor: Colors.black,
              items: const [
                BottomNavigationBarItem(
                    icon: Icon(Icons.home),
                    label: "Home"
                ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.call),
                    label: "Call"
                ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.history),
                    label: "History"
                ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.account_circle_outlined),
                    label: "Profile"
                )
              ],
            ),
          )
        )
      );
  }

}