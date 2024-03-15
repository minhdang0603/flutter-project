
import 'package:flutter/material.dart';
import 'package:login_register/common/widgets/MyButton.dart';
import 'package:login_register/screens/login_screen.dart';
import 'package:login_register/screens/register_screen.dart';

class HelloScreen extends StatefulWidget {

  HelloScreen({super.key});

  @override
  _HelloScreen createState() => _HelloScreen();

}

class _HelloScreen extends State<HelloScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Center(
          child: Column(
            children: <Widget>[
              const SizedBox(height: 100,),

              // welcome text
              const Text(
                "Welcom to",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w600
                ),
              ),
              const Text(
                "RISCS Lab",
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w600
                ),
              ),

              const SizedBox(height: 250,),

              // Sign in button
              MyButton(
                ontap: goToLogin,
                content: "Log in",
                margin: const EdgeInsets.symmetric(horizontal: 25),
                backgroudColor: Colors.deepPurple,
                textColor: Colors.white,
                borderRadius: BorderRadius.circular(40),
                fontSize: 16,
              ),

              const SizedBox(height: 20,),

              // Sign up button
              MyButton(
                ontap: goToSignup,
                content: "Sign up",
                margin: const EdgeInsets.symmetric(horizontal: 25),
                backgroudColor: Colors.grey[200],
                textColor: Colors.grey.shade600,
                borderRadius: BorderRadius.circular(40),
                fontSize: 16,
              ),

              const SizedBox(height: 40,),

              const Text(
                "Continue with Accounts",
                  style: TextStyle(
                    color: Colors.grey,
              ),),

              const SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 2,
                    child: MyButton(
                      ontap: ()=>{},
                      margin: const EdgeInsets.only(left: 25, right: 5),
                      backgroudColor: Colors.red[100],
                      content: "GOOGLE",
                      textColor: Colors.red,
                      letterSpacing: 2.0,
                      borderRadius: BorderRadius.circular(10),
                      fontSize: 13,
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 2,
                    child: MyButton(
                      ontap: ()=>{},
                      margin: const EdgeInsets.only(left: 5, right: 25),
                      backgroudColor: Colors.blue[100],
                      content: "FACEBOOK",
                      textColor: Colors.blue,
                      letterSpacing: 2.0,
                      borderRadius: BorderRadius.circular(10),
                      fontSize: 13,
                    ),
                  )
                ],
              )
        ],
      ),
    )),
    );
  }

  void goToLogin() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
  }

  void goToSignup() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterScreen()));
  }
}