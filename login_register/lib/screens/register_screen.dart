import 'package:flutter/material.dart';
import 'package:login_register/screens/login_screen.dart';

import '../common/widgets/MyButton.dart';

class RegisterScreen extends StatefulWidget {

  RegisterScreen({super.key});

  @override
  _RegisterScreen createState() => _RegisterScreen();

}

class _RegisterScreen extends State<RegisterScreen> {

  late TextEditingController _emailController;
  late TextEditingController _passwordController;


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[50],
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 30,
                    ),

                    //back arrow
                    GestureDetector(
                      onTap: () => {Navigator.pop(context)},
                      child: Container(
                        padding: const EdgeInsets.all(15),
                        margin: const EdgeInsets.only(right: 280),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15)),
                        child: const Icon(Icons.arrow_back_ios_new_rounded,
                            size: 20, opticalSize: 20),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),

                    // title
                    Container(
                      margin: const EdgeInsets.only(right: 60),
                      child: const Text(
                        "Create your Account",
                        style:TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),

                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: TextField(
                        controller: _emailController,
                        decoration: const InputDecoration(
                            iconColor: Colors.grey,
                            hintStyle: TextStyle(color: Colors.grey),
                            hintText: 'Username',
                            icon: Padding(
                                padding: EdgeInsets.only(left: 10),
                                child: Icon(Icons.person_outline_outlined)),
                            border: InputBorder.none),
                      ),
                    ),

                    const SizedBox(
                      height: 10,
                    ),

                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: TextField(
                        controller: _emailController,
                        decoration: const InputDecoration(
                            iconColor: Colors.grey,
                            hintStyle: TextStyle(color: Colors.grey),
                            hintText: 'Email',
                            icon: Padding(
                                padding: EdgeInsets.only(left: 10),
                                child: Icon(Icons.email_outlined)),
                            border: InputBorder.none),
                      ),
                    ),

                    const SizedBox(
                      height: 10,
                    ),

                    // email input field
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: TextField(
                        controller: _emailController,
                        decoration: const InputDecoration(
                            iconColor: Colors.grey,
                            hintStyle: TextStyle(color: Colors.grey),
                            hintText: 'Address',
                            icon: Padding(
                                padding: EdgeInsets.only(left: 10),
                                child: Icon(Icons.person_outline_outlined)),
                            border: InputBorder.none),
                      ),
                    ),

                    const SizedBox(
                      height: 10,
                    ),

                    // password input field
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: TextField(
                        controller: _passwordController,
                        obscureText: true,
                        decoration: InputDecoration(
                            iconColor: Colors.grey,
                            hintStyle: const TextStyle(color: Colors.grey),
                            hintText: 'Password',
                            icon: const Padding(
                                padding: EdgeInsets.only(left: 10),
                                child: Icon(Icons.lock_outlined)),
                            suffixIcon: Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: IconButton(
                                    onPressed: () => {},
                                    icon: const Icon(
                                        Icons.visibility_off_outlined))),
                            suffixIconColor: Colors.grey,
                            border: InputBorder.none),
                      ),
                    ),

                    const SizedBox(
                      height: 20,
                    ),

                    // login button
                    InkWell(
                      splashColor: Colors.transparent,
                      onTap: () => {},
                      child: Container(
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Colors.deepPurple,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: const Center(
                          child: Text(
                            "Register",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w800,
                                fontSize: 15),
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(
                      height: 10,
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Already have an account?",
                          style: TextStyle(
                              color: Colors.black54,
                              fontSize: 15),
                        ),
                        InkWell(
                          splashColor: Colors.transparent,
                          onTap: () =>
                          {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) => LoginScreen(),))
                          },
                          child: const Text(
                            "Sign in",
                            style: TextStyle(
                                color: Colors.deepPurple,
                                fontWeight: FontWeight.w800,
                                fontSize: 15),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),

              const SizedBox(
                height: 20,
              ),

              Divider(
                thickness: 0.5,
                color: Colors.grey[400],
              ),

              const SizedBox(
                height: 20,
              ),

              const Center(
                child: Text(
                  "Continue with Accounts",
                  style: TextStyle(
                      color: Colors.black54,
                      fontSize: 15),
                ),
              ),

              const SizedBox(
                height: 10,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: MediaQuery
                        .of(context)
                        .size
                        .width / 2,
                    child: MyButton(
                      ontap: () => {},
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
                    width: MediaQuery
                        .of(context)
                        .size
                        .width / 2,
                    child: MyButton(
                      ontap: () => {},
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
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
  }
}
